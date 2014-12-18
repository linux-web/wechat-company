package pp.service.client;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.ObjectMapper;

import cc.pp.rpc.domain.Result;
import cc.pp.rpc.util.HttpQueryBuilder;

public abstract class Service {

	//for request set
	protected final String userAgent = "PSA/1.0 JavaClient";
	protected final String psaVersion = "1.0";
	
	protected String tag;
	protected String host;
	
	private static Logger logger = Logger.getLogger(Service.class);
	
	public Service() {
		Properties props = new Properties();
		InputStream is = null;
		try {
			Enumeration<URL> rsc = this.getClass().getClassLoader().getResources("config.properties");
			while (rsc.hasMoreElements()) {
				URL url = rsc.nextElement();
				is = url.openStream();
				props.load(is);
				break;
			}
		} catch (IOException e) {
			logger.error("When Service() IOException", e);
		} catch (Exception e) {
			logger.error("When Service() Exception", e);
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				logger.error("When Service() is.close() IOException", e);
			}
		}
	
		tag = props.getProperty("tag");
		
		//读取配置环境
		String env = Client.getConfig("subEnv." + tag);
		if (env == null || env.equals("")) env = Client.getConfig("globalEnv");
		if (env == null) env = "production";

		logger.debug("Service [" + tag + "] env is [" + env + "]");
		
		//根据环境获取 host 设定
		host = props.getProperty("host." + env);
	}
	
	protected Result get(String url, int apiVersion, Map<String, ?> params) {
		return http("get", url, apiVersion, params, false);
	}
	
	protected Result post(String url, int apiVersion, Map<String, ?> params, boolean multi) {
		return http("post", url, apiVersion, params, multi);
	}
	
	protected Result post(String url, int apiVersion, Map<String, ?>params) {
		return post(url, apiVersion, params, false);
	}
	
	private Result http(String method, String url, int apiVersion, Map<String, ?> data, boolean multi) {
		url = host + "/" + url;

		url += (url.contains("?") ? '&' : '?') + "psa_ver=" + psaVersion + "&psa_apiver=" + apiVersion;

		String dataQuery = HttpQueryBuilder.build(data);

		if (method.equals("get")) {
			url += "&" + dataQuery;
		}

		logger.info(method.toUpperCase() + " " + url);

		Result d = null;

		try {
			URL svcUrl = new URL(url);
			
			HttpURLConnection conn = (HttpURLConnection)svcUrl.openConnection();
			conn.setDoInput(true);
			conn.setDoOutput(true);
			
			conn.setRequestProperty("User-Agent", userAgent);
			//conn.setRequestProperty("Charset", "utf-8");
			conn.setInstanceFollowRedirects(false);
			
			if (method.equals("post")) {
				conn.setRequestMethod("POST");
				//conn.setUseCaches(false);

				OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream(), Client.ENCODING);
				osw.write(dataQuery);
				osw.flush();
				osw.close();

				logger.info("Post Data: " + dataQuery);
			}
			
			conn.connect();

			int statusCode = conn.getResponseCode();
			int contentLength = conn.getContentLength();
			
			if (statusCode == 200) {
				InputStream is = conn.getInputStream();
				//不解析 Deflate 则去掉 iis 直接用 is
				//第二个参数使用 new Inflater(true) 代表与 php 相同的 RFC 1951 标准，否则使用 RFC 1950 标准
				InflaterInputStream iis = new InflaterInputStream(is, new Inflater(true));
				//DataInputStream iis = new DataInputStream(is);
				InputStreamReader dis = new InputStreamReader(iis, Client.ENCODING);
	
				String response = "";
				int b;
				
				try {
					while ((b = dis.read()) != -1) {
						response += (char)b;
					}
				} catch (EOFException e) {
					//JRE 6 存在某些情况出现 java.io.EOFException 异常问题，无法找出真正错误原因
					//但忽略此错误，并不影响内容正常读取，此问题在 JRE 7 下并不存在（可能是 Java 6 的 BUG）
					//为了能够在 6 环境下运行，此处 try..catch.. 忽略此异常，仅作日志记录
					logger.warn("Ignore inflate response exception: " + e.getMessage());
				}
	
				dis.close();
				iis.close();
				is.close();
				
				logger.info("Response StatusCode: " + statusCode + ", ContentLength: " + contentLength + ", UncompressContentLength: " + response.length());
				
				//解析 JSON
				ObjectMapper mapper = new ObjectMapper();
				JsonNode node = mapper.readTree(response);
				
				int errorCode = node.get("error_code").asInt();
				String msg = "";
				
				try {
					msg = node.get("msg").asText();
				} catch (NullPointerException e) {}
				
				//设置数据容器
				if (errorCode == 0) {
					JsonNode resData = null;
					try {
						resData = node.get("data");
					} catch (NullPointerException e) {}
					d = new Result(0, 0, "", msg, resData, response);
					
				} else {
					int errorLevel = 2;
					String errorSvc = "";
					
					try {
						errorLevel = node.get("error_level").asInt();
						errorSvc = node.get("error_svc").asText();
					} catch (NullPointerException e) {}
					
					d = new Result(errorCode, errorLevel, errorSvc, msg, null, response);
				}
				
			} else {
				logger.error("Response StatusCode: " + statusCode);
				switch (statusCode) {
					case 500: d = new Result(10005, 0, tag, "service internal server error", null, null); break;
					case 404: d = new Result(10004, 0, tag, "service address not found", null, null); break;
					default: d = new Result(10003, 0, tag, "service request response status error, (Status Code: " + statusCode + ")", null, null);
				}
			}

			conn.disconnect();
			
		} catch (MalformedURLException e) {
			logger.error("When http() MalformedURLException", e);
		} catch (JsonParseException e) {
			logger.error("When ObjectMapper.readTree(response),response format error");
		} catch (IOException e) {
			logger.error("When http() MalformedURLException", e);
		} catch (Exception e) {
			logger.error("When http() Exception", e);
		}
		
		return d;
	}
	
}
