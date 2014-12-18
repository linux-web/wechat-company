package cc.pp.weixin.domain.message.request;

import org.dom4j.Element;

import cc.pp.weixin.constant.MsgFieldName;
import cc.pp.weixin.constant.MsgType;


/**
 * 微信公众平台图片消息
 * @author wgybzb
 * @since  2013-04-06
 */
public class ImageRequestMessage extends RequestMessage {
	/**
	 * 默认的序列化版本号
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 图片链接
	 */
	private String picUrl;
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	/**
	 * 默认消息类型为 图片消息
	 */
	public ImageRequestMessage() {
		this.msgType = MsgType.IMAGE;
	}

	/**
	 * 构造函数：根据微信平台的请求数据，封装图片消息属性
	 */
	public ImageRequestMessage(Element element) {
		//调用父类的构造方法，初始化通用信息
		super(element);

		if (element == null){
			return;
		}
		this.picUrl = element.elementText(MsgFieldName.PIC_URL);
	}
}
