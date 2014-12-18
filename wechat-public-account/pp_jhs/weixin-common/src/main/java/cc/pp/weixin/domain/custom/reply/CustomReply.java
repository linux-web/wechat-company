package cc.pp.weixin.domain.custom.reply;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.JsonNode;
import org.springframework.util.CollectionUtils;

import cc.pp.weixin.constant.CustomConstant;
import cc.pp.weixin.constant.FaceValue;
import cc.pp.weixin.domain.message.MessageItem;
import cc.pp.weixin.domain.message.response.NewsResponseMessage;
import cc.pp.weixin.domain.message.response.TextResponseMessage;

/**
 * 自定义回复数据
 * @author wgybzb
 * @since  2013-04-26
 */
public class CustomReply implements Serializable{
	/**
	 * 默认的序列号版本号
	 */
	private static final long serialVersionUID = 968820493093713441L;

	/**
	 * 回复内容格式
	 */
	private String msgType;
	public String getMsgType() {
		return msgType;
	}
	public void setMsgType(String msgType) {
		this.msgType = msgType;
	}

	/**
	 * 图文信息载体列表
	 */
	List<ReplyItem> replyItemList = new ArrayList<ReplyItem>();
	public List<ReplyItem> getReplyItemList() {
		return replyItemList;
	}
	public void setReplyItemList(List<ReplyItem> replyItemList) {
		this.replyItemList = replyItemList;
	}

	/**
	 * 添加图文信息项
	 * @param msgItem
	 */
	public void addReplyItem(ReplyItem replyItem) {
		if (this.replyItemList != null){
			replyItemList.add(replyItem);
		}
	}

	public void addReplyItemList(List<ReplyItem> replyItemList) {
		if (this.replyItemList != null){
			this.replyItemList.addAll(replyItemList);
		}
	}

	/**
	 * 添加图文信息项
	 * @param msgItem
	 */
	public List<ReplyItem> genReplyItem(JsonNode replyNode) {
		if (replyNode == null){
			return null;
		}

		//设置回复内容类型
		JsonNode msgTypeNode = replyNode.get(CustomConstant.MSG_TYPE);
		if (msgTypeNode == null ){
			return null;
		}
		this.setMsgType(msgTypeNode.asText());

		ReplyItem juItem = null;
		List<ReplyItem> replyItemList = new ArrayList<ReplyItem>();
		if (CustomConstant.MSG_TYPE_TEXT.equals(this.msgType)){//文本时，只随机一条回复内容
			juItem = new ReplyItem();
			//回复文本
			juItem.setContent(replyNode.get(CustomConstant.CONTENT).asText());
			replyItemList.add(juItem);
		} else if (CustomConstant.MSG_TYPE_NEWS.equals(this.msgType)){
			JsonNode newsNode = replyNode.get(CustomConstant.MSG_TYPE_NEWS);
			for(JsonNode node:newsNode){
				juItem = new ReplyItem();
				//回复标题
				juItem.setTitle(node.get(CustomConstant.TITLE).asText());

				//回复URL
				juItem.setUrl(node.get(CustomConstant.URL).asText());

				//回复图片链接
				juItem.setPicUrl(node.get(CustomConstant.PIC_URL).asText());

				//回复摘要描述
				juItem.setDescription(node.get(CustomConstant.DIGEST).asText());

				replyItemList.add(juItem);
			}

		} else {//无法识别的类型
			return null;
		}
		return replyItemList;
	}

	/**
	 * 默认消息类型为 回复图文消息
	 */
	public CustomReply() {

	}

	/**
	 * 根据回复的消息类型，
	 * 获取微信端格式的自定义回复信息
	 *
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 */
	public String getWeixinResponse(String fromUserName,String toUserName){
		if (CustomConstant.MSG_TYPE_TEXT.equals(this.msgType)){
			return getWeiXinTextResponse(fromUserName,toUserName);
		} else if (CustomConstant.MSG_TYPE_NEWS.equals(this.msgType)){
			return getWeiXinNewsResponse(fromUserName,toUserName);
		} else {
			return StringUtils.EMPTY;
		}
	}

	/**
	 * 获取微信端格式的自定义回复图文内容
	 *
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 */
	private String getWeiXinNewsResponse(String fromUserName,String toUserName){
		//没有匹配到自定义内容的情况
		if (CollectionUtils.isEmpty(replyItemList)){
			return StringUtils.EMPTY;
		}

		//设置图文信息对象
		NewsResponseMessage newsResMsg = new NewsResponseMessage();
		newsResMsg.setFromUserName(fromUserName);
		newsResMsg.setToUserName(toUserName);
		for (ReplyItem replyItem:replyItemList){
			//默认第一个item为大图
			MessageItem msgItem = new MessageItem();

			//获取标题信息
			String title = replyItem.getTitle();
			msgItem.setTitle(title);

			//获取图片
			msgItem.setPicUrl(replyItem.getPicUrl());

			//获取链接
			msgItem.setUrl(replyItem.getUrl());

			//回复摘要描述
			msgItem.setDescription(replyItem.getDescription());

			newsResMsg.addMsgItem(msgItem);
		}

		String responseStr =  newsResMsg.getReponseMsg();
		return responseStr;
	}

	/**
	 * 获取微信端格式的自定义回复图文内容呢
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 */
	private String getWeiXinTextResponse(String fromUserName,String toUserName){
		//没有匹配到自定义内容的情况
		if (CollectionUtils.isEmpty(replyItemList)){
			return StringUtils.EMPTY;
		}

		//循环遍历，获取所有响应内容
		String content = "";
		for (ReplyItem replyItem:replyItemList){
			String replyItemContent = replyItem.getContent();
			if (StringUtils.isEmpty(content)){
				content = replyItemContent;
			} else {
				content = "\n" + content + replyItemContent;
			}
		}

		//设置文本信息对象
		TextResponseMessage textResMsg = new TextResponseMessage();
		textResMsg.setFuncFlag(0);
		textResMsg.setFromUserName(fromUserName);
		textResMsg.setToUserName(toUserName);
		textResMsg.setContent(content);

		String responseStr =  textResMsg.getReponseMsg();
		return responseStr;
	}

	/**
	 * 获取微信端格式的默认的自定义回复内容
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 */
	public String getDefaultResponse(String fromUserName,String toUserName){
		//没有匹配到自定义内容的情况
		if (CollectionUtils.isEmpty(replyItemList)){
			TextResponseMessage textResMsg = new TextResponseMessage();
			textResMsg.setFuncFlag(0);
			textResMsg.setFromUserName(fromUserName);
			textResMsg.setToUserName(toUserName);
			textResMsg.setContent(FaceValue.UNKNOWN + "小聚我很抱歉哦，没找到你的问题答案");
			String responseStr =  textResMsg.getReponseMsg();
			return responseStr;
		} else {
			return StringUtils.EMPTY;
		}
	}

	@Override
	public String toString() {
		if (CollectionUtils.isEmpty(replyItemList)){
			return "Got replyItemList is Empty";
		}
		String result = "Total:" + replyItemList.size();
		return result;
	}
}
