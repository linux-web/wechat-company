package cc.pp.weixin.domain.message.event;

import org.dom4j.Element;

import cc.pp.weixin.constant.MsgFieldName;
import cc.pp.weixin.constant.MsgType;
import cc.pp.weixin.domain.message.BaseMessage;


/**
 * 微信公众平台事件消息
 * @author wgybzb
 * @since  2013-04-06
 */
public class EventMessage extends BaseMessage {
	/**
	 * 默认的序列化版本号
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 事件类型:
	 * subscribe(订阅)
	 * unsubscribe(取消订阅)
	 * CLICK(自定义菜单点击事件)
	 */
	private String event;
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}

	/**
	 * 事件KEY值，与自定义菜单接口中KEY值对应
	 */
	private String eventKey;
	public String getEventKey() {
		return eventKey;
	}
	public void setEventKey(String eventKey) {
		this.eventKey = eventKey;
	}

	/**
	 * 默认消息类型为 事件消息
	 */
	public EventMessage() {
		this.msgType = MsgType.EVENT;
	}

	/**
	 * 构造函数：根据微信平台的请求数据，封装事件消息属性
	 */
	public EventMessage(Element element) {
		//调用父类的构造方法，初始化通用信息
		super(element);

		if (element == null){
			return;
		}
		this.event = element.elementText(MsgFieldName.EVENT);
		this.eventKey = element.elementText(MsgFieldName.EVENT_KEY);
	}
}
