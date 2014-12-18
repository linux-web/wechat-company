package cc.pp.weixin.domain.message.response;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import cc.pp.weixin.constant.MsgType;
import cc.pp.weixin.domain.message.MessageItem;


/**
 * 微信公众平台回复图文消息
 * @author wgybzb
 * @since  2013-04-06
 */
public class NewsResponseMessage extends ResponseMessage {
	/**
	 * 默认的序列化版本号
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 图文消息列表
	 */
	List<MessageItem> msgItemList;
	public List<MessageItem> getMsgItemList() {
		return msgItemList;
	}
	public void setMsgItemList(List<MessageItem> msgItemList) {
		this.msgItemList = msgItemList;
	}

	/**
	 * 添加图文信息项
	 * @param msgItem
	 */
	public void addMsgItem(MessageItem msgItem) {
		if (this.msgItemList == null){
			msgItemList = new ArrayList<MessageItem>();
		}
		msgItemList.add(msgItem);
	}

	/**
	 * 默认消息类型为 回复图文消息
	 */
	public NewsResponseMessage() {
		this.msgType = MsgType.NEWS;
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
		sb.append("<MsgType><![CDATA[").append(MsgType.NEWS).append("]]></MsgType>");

		//回复音乐消息的内容
		if (msgItemList != null && msgItemList.size() > 0){
			sb.append("<ArticleCount>").append(msgItemList.size()).append("</ArticleCount>");
			sb.append("<Articles>");
			//遍历图文列表信息，响应图文信息
			for (MessageItem item:msgItemList){
				//获取描述
				String description = "";
				if (StringUtils.isNotEmpty(item.getDescription())){
					description = item.getDescription();
				}
				String title = item.getTitle();
				//解决微信违禁词问题:时尚新款纯色女士腰带皮带,居然被分词为【色女】了
				if (StringUtils.contains(title, "色")){
					title = StringUtils.replace(title, "色", "色 ");
				}
				sb.append("<item>");
				sb.append("<Title><![CDATA[").append(title).append("]]></Title>");
				sb.append("<Description><![CDATA[").append(description).append("]]></Description>");
				sb.append("<PicUrl><![CDATA[").append(item.getPicUrl()).append("]]></PicUrl>");
				sb.append("<Url><![CDATA[").append(item.getUrl()).append("]]></Url>");
				sb.append("</item>");
			}
			sb.append("</Articles>");
		}

		//位0x0001被标志时，星标刚收到的消息
		sb.append("<FuncFlag>").append(this.funcFlag).append("</FuncFlag>");

		sb.append("</xml>");
		return sb.toString();
	}
}
