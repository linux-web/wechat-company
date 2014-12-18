package cc.pp.weixin.domain.message;

import java.io.Serializable;

/**
 * 微信公众平台 图文信息载体
 * @author wgybzb
 * @since  2013-04-06
 */
public class MessageItem implements Serializable{
	/**
	 * 默认的序列化版本号
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 图文消息标题
	 */
	private String title;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * 图文消息描述
	 */
	private String description;
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * 图片链接，支持JPG、PNG格式，
	 * 较好的效果为大图640*320，小图80*80，
	 * 限制图片链接的域名需要与开发者填写的基本资料中的Url一致
	 */
	private String picUrl;
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	/**
	 * 点击图文消息跳转链接
	 */
	private String url;
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
}
