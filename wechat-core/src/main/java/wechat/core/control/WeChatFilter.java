package wechat.core.control;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import wechat.core.utils.Tools;

/**
 * 过滤器
 * 
 * @author wanggang
 *
 */
public class WeChatFilter implements Filter {

	private final Logger logger = LoggerFactory.getLogger(WeChatFilter.class);

	@Override
	public void destroy() {
		logger.info("WeChatFilter destorying ...");
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException,
			ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		Boolean isGet = request.getMethod().equals("GET");

		if (isGet) {
			doGet(request, response);
		} else {
			doPost(request, response);
		}
	}

	private void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/xml");
		ServletInputStream in = request.getInputStream();
		String xmlMsg = Tools.inputStream2String(in);
		logger.debug("Inputing message:[" + xmlMsg + "]");
		String xml = WeChat.processing(xmlMsg);
		response.getWriter().write(xml);
	}

	private void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String path = request.getServletPath();
		String pathInfo = path.substring(path.lastIndexOf("/"));
		String _token;
		String outPut = "error";
		if (pathInfo != null) {
			_token = pathInfo.substring(1);
			String signature = request.getParameter("signature");// 微信加密签名
			String timestamp = request.getParameter("timestamp");// 时间戳
			String nonce = request.getParameter("nonce");// 随机数
			String echostr = request.getParameter("echostr");//
			// 验证
			if (WeChat.checkSignature(_token, signature, timestamp, nonce)) {
				outPut = echostr;
			}
		}
		response.getWriter().write(outPut);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		logger.info("WeChatFilter starting ...");
	}

}
