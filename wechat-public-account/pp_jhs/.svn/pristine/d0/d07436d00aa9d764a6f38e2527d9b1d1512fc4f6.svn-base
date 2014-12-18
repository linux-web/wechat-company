package cc.pp.weixin.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.dom4j.Element;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import cc.pp.weixin.biz.jhs.ao.JuBusinessAO;
import cc.pp.weixin.biz.jhs.common.ShowInfoUtils;
import cc.pp.weixin.biz.jhs.constant.JuConstant;
import cc.pp.weixin.common.ParseRequestData;
import cc.pp.weixin.common.Verify;
import cc.pp.weixin.constant.Business;
import cc.pp.weixin.constant.MsgFieldName;


public class JuWeinxin extends HttpServlet {
	private static Logger logger = Logger.getLogger(JuWeinxin.class);
	private static final long serialVersionUID = 1L;

	private JuBusinessAO juBusinessAO;
	/**
	 * 从Spring容器中，获取配置的bean，用于业务处理
	 * @param request	   用户请求对象
	 */
	private void getContextBean(HttpServletRequest request){
		WebApplicationContext context = WebApplicationContextUtils.
				getRequiredWebApplicationContext(request.getSession().getServletContext());
		juBusinessAO = (JuBusinessAO)context.getBean("juBusinessAO");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//向微信公众平台注册开发者账号时用
		if(Business.REGISTER_DEVELOPER_SWITCH){
			String echostr = request.getParameter("echostr");
			if (StringUtils.isNotEmpty(echostr)){
				response.getWriter().write(echostr);
			}
			return;
		}
		
		//是否开启请求校验,判定请求是否来自于微信平台
		if(Business.REQUEST_VERIFY_SWITCH){
			boolean isFromMp = Verify.checkSignature(request,JuConstant.JU_TOKEN);
			if (!isFromMp){
				response.getWriter().write("无效请求，请您使用微信账号访问聚划算微信，谢谢啊！");
				logger.info("来于非微信平台的请求，直接忽略请求不做处理");
				return;
			}
		}
		
		String responseStr =  "";
		Element rootElement = null;
		try {
			//是否开启本地测试，用模拟数据进行调试
			if(Business.OPEN_MOCKUP_SWITCH){
				rootElement = ParseRequestData.getTestTextData("注意事项");
				//rootElement = ParseRequestData.getTestXmlLocalData();
			} else {
				rootElement = ParseRequestData.getRootElement(request);
			}
			
			//从Spring容器中，获取配置的bean
			getContextBean(request);
			//获取微信格式响应内容
			responseStr = juBusinessAO.getWeixinMsg(rootElement);
		} catch (Exception e) {
			//出现异常情况时，系统默认提示
			String toUserName = "";
			String fromUserName = "";
			if (rootElement != null){
				toUserName = rootElement.elementText(MsgFieldName.TO_USER_NAME);
				fromUserName = rootElement.elementText(MsgFieldName.FROM_USER_NAME);
			}
			responseStr =  ShowInfoUtils.showSystemInfo(fromUserName,toUserName);
			logger.error("When JuWeinxin Process Request Error", e);
		}
		//响应结果
		response.getWriter().write(responseStr);
	}
}
