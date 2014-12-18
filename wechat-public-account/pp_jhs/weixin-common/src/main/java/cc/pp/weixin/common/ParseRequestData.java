package cc.pp.weixin.common;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import cc.pp.weixin.constant.Business;
import cc.pp.weixin.util.HttpUtils;


public class ParseRequestData {
	/**
	 * 日志输出
	 */
	private static Logger logger = Logger.getLogger(ParseRequestData.class);
	
	/**
	 * 从微信平台的请求流中，获取XML请求信息
	 * @param request	来自微信平台的请求
	 * @return			请求中的XML信息对象
	 */
	public static Document getXmlDocument(HttpServletRequest request){
		//XML信息对象
		Document doc = null;
		InputStream inputStream = null;
		try {
			inputStream = request.getInputStream();
			//取HTTP请求流长度
			int size = request.getContentLength();
			
			//用于缓存每次读取的数据
			if (size <= 0){
				return doc;
			}
			byte[] buffer = new byte[size];
			
			// 用于存放结果的数组
			byte[] xmldataByte = new byte[size];
			
			// 循环读取
			int count = 0;
			int rbyte = 0;
			while (count < size) { 
				// 每次实际读取长度存于rbyte中
				rbyte = inputStream.read(buffer); 
				for(int i=0;i<rbyte;i++) {
					xmldataByte[count + i] = buffer[i];
				}
				count += rbyte;
			}
			
			String requestStr = new String(xmldataByte, "UTF-8");
			
			//日志输出
			if (Business.LOG_INFO_SWITCH && StringUtils.isNotEmpty(requestStr)){
				logger.info("From Weinxin Request String Value:" + requestStr);
			}
			
			//打印请求参数
			if (Business.LOG_INFO_SWITCH ){
				HttpUtils.printRequest(request);
			}
			
			doc = DocumentHelper.parseText(requestStr);
		} catch (Exception e) {
			logger.error("When ParseRequestData Process getXmlDocument Error", e);
		} finally {
			//关闭操作流
			try {
				inputStream.close();
			} catch (IOException e) {
				logger.error("when inputStream.close() error", e);
			}
		}
		return doc;
	}
	
	/**
	 * 从微信平台的请求流中，获取XML请求信息 中的根节点对象
	 * @param request	来自微信平台的请求
	 * @return			请求中的XML信息中的根节点对象
	 */
	public static Element getRootElement(HttpServletRequest request){
		//XML信息对象
		Element rootElement = null;
		try {
			Document doc = ParseRequestData.getXmlDocument(request);
			if(doc != null){
				rootElement = doc.getRootElement();
			}
		} catch (Exception e) {
			logger.error("When ParseRequestData Process getRootElement Error", e);
		}
		return rootElement;
	}
	
	/**
	 * 获取测试用的模拟的微信请求数据
	 * @param content	来自微信平台的请求内容
	 * @return			模拟的XML信息对象
	 */
	public static Element getTestTextData(String content){
		//XML信息对象
		Document doc = null;
		//XML信息对象
		Element rootElement = null;
				
		String requestStr = "<xml><ToUserName><![CDATA[gh_47df22b5c4a0]]></ToUserName>";
		requestStr = requestStr + "<FromUserName><![CDATA[oad62jhuRP_Z5_2ORZK0VgDbrhew]]></FromUserName>";
		requestStr = requestStr + "<CreateTime>" + System.currentTimeMillis() + "</CreateTime>";
		requestStr = requestStr + "<MsgType><![CDATA[text]]></MsgType>";
		requestStr = requestStr + "<Content><![CDATA[" + content + "]]></Content>";
		requestStr = requestStr + "<MsgId>5875425521881317695</MsgId>";
		requestStr = requestStr + "<uid>216</uid>";
		requestStr = requestStr + "</xml>";
		try {
			doc = DocumentHelper.parseText(requestStr);
			if(doc != null){
				rootElement = doc.getRootElement();
			}
		} catch (Exception e) {
			logger.error("When ParseRequestData Process getTestXmlDocument Error", e);
		}
		return rootElement;
	}
	
	/**
	 * 获取测试用的模拟的微信请求数据
	 * @param content	来自微信平台的请求内容
	 * @return			模拟的XML信息对象
	 */
	public static Element getTestXmlLocalData(){
		//XML信息对象
		Document doc = null;
		//XML信息对象
		Element rootElement = null;
				
		String requestStr = "<xml><ToUserName><![CDATA[gh_47df22b5c4a0]]></ToUserName>";
		requestStr = requestStr + "<FromUserName><![CDATA[oad62jmNLjg5P8GXomB4AqHCfakM]]></FromUserName>";
		requestStr = requestStr + "<CreateTime>1369636259</CreateTime>";
		requestStr = requestStr + "<MsgType><![CDATA[location]]></MsgType>";
		requestStr = requestStr + "<Location_X>30.260460</Location_X>";
		requestStr = requestStr + "<Location_Y>120.095276</Location_Y>";
		requestStr = requestStr + "<Scale>20</Scale>";
		requestStr = requestStr + "<Label><![CDATA[]]></Label>";
		requestStr = requestStr + "<MsgId>5882542939820786931</MsgId>";
		requestStr = requestStr + "</xml>";
		
		try {
			doc = DocumentHelper.parseText(requestStr);
			if(doc != null){
				rootElement = doc.getRootElement();
			}
		} catch (Exception e) {
			logger.error("When ParseRequestData Process getTestXmlDocument Error", e);
		}
		return rootElement;
	}
}
