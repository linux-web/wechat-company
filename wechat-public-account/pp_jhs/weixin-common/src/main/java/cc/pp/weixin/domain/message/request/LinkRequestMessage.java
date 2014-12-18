package cc.pp.weixin.domain.message.request;

import org.dom4j.Element;

import cc.pp.weixin.constant.MsgFieldName;
import cc.pp.weixin.constant.MsgType;


/**
 * 微信公众平台链接消息
 * @author wgybzb
 * @since  2013-04-06
 */
public class LinkRequestMessage extends RequestMessage {
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
	 * 消息链接
	 */
	private String url;
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
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
	 * 默认消息类型为 链接消息
	 */
	public LinkRequestMessage() {
		this.msgType = MsgType.LINK;
	}

	/**
	 * 构造函数：根据微信平台的请求数据，封装链接消息属性
	 */
	public LinkRequestMessage(Element element) {
		//调用父类的构造方法，初始化通用信息
		super(element);

		if (element == null){
			return;
		}
		this.title = element.elementText(MsgFieldName.Title);
		this.description = element.elementText(MsgFieldName.DESCRIPTION);
		this.url = element.elementText(MsgFieldName.URL);
	}
}
