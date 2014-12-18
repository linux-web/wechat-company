package wechat.app.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wechat.core.domain.WeChatFeedBack;
import wechat.core.utils.Tools;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 * 仅作示例，供参考
 * 
 * @author wanggang
 *
 */
public class WeChatPayFeedbBackServlet extends HttpServlet {

	private static final long serialVersionUID = -7558243553589930031L;

	@SuppressWarnings("unused")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletInputStream in = req.getInputStream();
		// 转换微信post过来的xml内容
		XStream xs = new XStream(new DomDriver());
		xs.alias("xml", WeChatFeedBack.class);
		String xmlMsg = Tools.inputStream2String(in);
		WeChatFeedBack postData = (WeChatFeedBack) xs.fromXML(xmlMsg);
		if (null == postData) {
			System.out.println("postData:isnull...");
			return;
		}
		System.out.println(postData.toString());
		// 标记客户的投诉处理状态
		String msgType = postData.getMsgType();
		String feedBackId = postData.getFeedBackId();
		// 将处理的信息更新或保存到数据库 bg
		// ******************************
		//		try {
		//			// 另外标记处理状态的请自行处理，可单独后台页面由客服联系用户去处理，处理的同事并发送客服消息，
		//			WeChat.payfeedback(postData.getOpenId(), postData.getFeedBackId());
		//		} catch (Exception e) {
		//			e.printStackTrace();
		//		}
		// ******************************
		// 将处理的信息更新或保存到数据库 ed

		// 调用客服api，根据不同type安抚用户，同支付成功
		//		if (msgType.equals(WeChatFeedBack.MSGTYPE_REQUEST)) {
		//			
		//		} else ...

	}

}
