package cc.pp.weixin.custom.replay.manager.impl;

import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonNode;

import cc.pp.weixin.constant.CustomConstant;
import cc.pp.weixin.custom.replay.dao.CustomReplyDAO;
import cc.pp.weixin.custom.replay.manager.CustomReplyManager;
import cc.pp.weixin.domain.custom.reply.CustomReply;
import cc.pp.weixin.domain.custom.reply.ReplyItem;
import cc.pp.weixin.util.JsonUtils;

public class DefaultCustomReplyManager implements CustomReplyManager {
	private CustomReplyDAO customReplyDAO;
	public void setCustomReplyDAO(CustomReplyDAO customReplyDAO) {
		this.customReplyDAO = customReplyDAO;
	}
	@Override
	public CustomReply getCustomReply(long uid) {
		CustomReply customReply = null;
		String customReplyJson = customReplyDAO.getCustomReply(uid);
		
		//把JSON字符串转成JsonNode对象树结构进行解析
		JsonNode customReplyNode = JsonUtils.getJsonNode(customReplyJson);
		if (customReplyNode == null){
			return customReply;
		}
		customReply = new CustomReply();
		
		//自定义回复列表
		JsonNode customReplyNodeList = JsonUtils.getJsonNode(customReplyNode,CustomConstant.REPLAY_LIST);
		
		if (customReplyNode != null){
			List<ReplyItem> juItemList = new ArrayList<ReplyItem>();
			for (JsonNode replyNode:customReplyNodeList){
				ReplyItem juItem = new ReplyItem();
				//回复标题
				juItem.setTitle(replyNode.get(CustomConstant.TITLE).asText());
				
				//回复URL
				juItem.setUrl(replyNode.get(CustomConstant.URL).asText());
				
				//回复图片链接
				juItem.setPicUrl(replyNode.get(CustomConstant.PIC_URL).asText());
				
				//回复对应关键词列表
				juItem.setKeyWordList(replyNode.get(CustomConstant.KEYWORDS).asText());
				juItemList.add(juItem);
			}
			customReply.setReplyItemList(juItemList);
		}
		return customReply;
	}
}
