package cc.pp.weixin.domain.message.response;

import cc.pp.weixin.constant.MsgType;

/**
 * 微信公众平台回复音乐消息
 * @author wgybzb
 * @since  2013-04-06
 */
public class MusicResponseMessage extends ResponseMessage {
	/**
	 * 默认的序列化版本号
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 消息标题
	 */
	private String title;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * 消息描述
	 */
	private String description;
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * 音乐链接
	 */
	private String musicUrl;
	public String getMusicUrl() {
		return musicUrl;
	}
	public void setMusicUrl(String musicUrl) {
		this.musicUrl = musicUrl;
	}

	/**
	 * 高质量音乐链接，WIFI环境优先使用该链接播放音乐
	 */
	private String hqMusicUrl;
	public String getHqMusicUrl() {
		return hqMusicUrl;
	}
	public void setHqMusicUrl(String hqMusicUrl) {
		this.hqMusicUrl = hqMusicUrl;
	}

	/**
	 * 默认消息类型为 回复音乐消息
	 */
	public MusicResponseMessage() {
		this.msgType = MsgType.MUSIC;
	}

	@Override
	public String getReponseMsg() {
		StringBuilder sb = new StringBuilder();
		sb.append("<xml>");

		//发送方帐号
		sb.append("<ToUserName><![CDATA[" + fromUserName).append("]]></ToUserName>");
		//开发者微信号
		sb.append("<FromUserName><![CDATA[" + toUserName).append("]]></FromUserName>");
		//创建时间 （整型）
		sb.append("<CreateTime>").append(System.currentTimeMillis()).append("</CreateTime>");
		//回复音乐消息类型
		sb.append("<MsgType><![CDATA[").append(MsgType.MUSIC).append("]]></MsgType>");

		//回复音乐消息的内容
		sb.append("<Music>");
		sb.append("<Title><![CDATA[").append(this.title).append("]]></Title>");
		sb.append("<Description><![CDATA[").append(this.description).append("]]></Description>");
		sb.append("<MusicUrl><![CDATA[").append(this.musicUrl).append("]]></MusicUrl>");
		sb.append("<HQMusicUrl><![CDATA[").append(this.hqMusicUrl).append("]]></HQMusicUrl>");
		sb.append("</Music>");

		//位0x0001被标志时，星标刚收到的消息
		sb.append("<FuncFlag>").append(this.funcFlag).append("</FuncFlag>");

		sb.append("</xml>");
		return sb.toString();
	}
}
