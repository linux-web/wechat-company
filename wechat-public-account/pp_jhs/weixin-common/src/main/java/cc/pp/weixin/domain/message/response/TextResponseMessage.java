package cc.pp.weixin.domain.message.response;

import cc.pp.weixin.constant.MsgType;

/**
 * 微信公众平台回复文本消息
 * @author wgybzb
 * @since  2013-04-06
 */
public class TextResponseMessage extends ResponseMessage {
	/**
	 * 默认的序列化版本号
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 回复的消息内容,长度不超过2048字节
	 */
	private String content;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * 默认消息类型为 文本消息
	 */
	public TextResponseMessage() {
		this.msgType = MsgType.RESPONSE_TEXT;
	}

	@Override
	public String getReponseMsg() {
		StringBuilder sb = new StringBuilder();
		sb.append("<xml>");

		//发送方帐号
		sb.append("<ToUserName><![CDATA[" + fromUserName).append("]]></ToUserName>");
		//开发者微信号
		sb.append("<FromUserName><![CDATA[" + toUserName).append("]]></FromUserName>");
		//消息创建时间 （整型）
		sb.append("<CreateTime>").append(System.currentTimeMillis()).append("</CreateTime>");
		//回复文本消息类型
		sb.append("<MsgType><![CDATA[").append(MsgType.RESPONSE_TEXT).append("]]></MsgType>");
		//回复文本消息内容
		sb.append("<Content>").append(this.content).append("</Content>");
		//位0x0001被标志时，星标刚收到的消息
		sb.append("<FuncFlag>").append(this.funcFlag).append("</FuncFlag>");

		sb.append("</xml>");
		return sb.toString();
	}
}
