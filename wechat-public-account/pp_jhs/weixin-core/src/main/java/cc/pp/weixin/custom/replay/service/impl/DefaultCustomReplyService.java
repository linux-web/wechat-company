package cc.pp.weixin.custom.replay.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonNode;
import org.springframework.util.CollectionUtils;

import cc.pp.rpc.domain.Result;
import cc.pp.weixin.constant.Business;
import cc.pp.weixin.constant.CustomConstant;
import cc.pp.weixin.custom.replay.manager.CustomReplyManager;
import cc.pp.weixin.custom.replay.service.CustomReplyService;
import cc.pp.weixin.domain.custom.reply.CustomReply;
import cc.pp.weixin.domain.custom.reply.ReplyItem;
import cc.pp.weixin.domain.keyword.KeyWordInfo;
import cc.pp.weixin.util.JsonUtils;
import cc.pp.weixin.utils.KeyWordUtil;
import client.replay.RuleService;

/**
 * 自定义回复服务默认实现类
 * @author wgybzb
 * @since  2013-04-26
 */
public class DefaultCustomReplyService implements CustomReplyService {
	private static Logger logger = Logger.getLogger(DefaultCustomReplyService.class);
	//用于缓存用户的自定义回复
	private static Map<Integer,CustomReply> customReplyCache = new HashMap<Integer,CustomReply>();
	
	private CustomReplyManager customReplyManager;
	public void setCustomReplyManager(CustomReplyManager customReplyManager) {
		this.customReplyManager = customReplyManager;
	}
	
	private RuleService ruleService;
	public void setRuleService(RuleService ruleService) {
		this.ruleService = ruleService;
	}

	@Override
	public CustomReply getCustomReply(long uid) {
		
		CustomReply customReply = customReplyCache.get(Business.JU_UID);
		
		if (customReply == null){
			customReply = customReplyManager.getCustomReply(uid);
		}
		if (customReply != null){
			customReplyCache.put(Business.JU_UID, customReply);
		}
		return customReply;
	}
	
	@Override
	public CustomReply getMatchedCustomReply(long uid,String content) {
		//对指定的内容进行分词,并获取分词结果列表
		List<KeyWordInfo> keyWordInfoList  = KeyWordUtil.getKeyWordList(content);
		if (StringUtils.isNotEmpty(content) && CollectionUtils.isEmpty(keyWordInfoList)){
			logger.warn("KeyWordUtil.getKeyWordList is Empty");
			return null;
		}
		
		//查询当前用户的自定义回复
		CustomReply customReply = this.getCustomReply(uid);
		List<ReplyItem> replyItemList = customReply.getReplyItemList();
		if (CollectionUtils.isEmpty(replyItemList)){
			return null;
		}
		
		//获取匹配到的自定义回复
		CustomReply matchedCustomReply = new CustomReply();
		for (ReplyItem replyItem:replyItemList){
			for (KeyWordInfo keyWordInfo:keyWordInfoList){
				String keyWord = keyWordInfo.getKeyWord();
				if (replyItem.getKeyWordList().contains(keyWord)){
					matchedCustomReply.addReplyItem(replyItem);
				}
			}
		}
		return matchedCustomReply;
	}

	@Override
	public CustomReply getMatchedCustomReply(int uid, String content) {

		CustomReply customReply = new CustomReply();
		
		//手动改变接口的域名，例如测试环境是可以手动指定
		if (StringUtils.isNotEmpty(Business.REPLYSERVICE_HOST)){
			ruleService.setHost(Business.REPLYSERVICE_HOST);
		}
		Result ruleResult = ruleService.search(uid, content);
		if (ruleResult==null || ruleResult.isError()){
			return customReply;
		}
		String customReplyJson = ruleResult.getResponseText();
		
		//把JSON字符串转成JsonNode对象树结构进行解析
		JsonNode customReplyNode = JsonUtils.getJsonNode(customReplyJson);
		if (customReplyNode == null){
			return customReply;
		}
		
		//自定义回复列表
		JsonNode customReplyDataNode = JsonUtils.getJsonNode(customReplyNode,CustomConstant.REPLAY_DATA);
		if (customReplyNode != null){
			List<ReplyItem> juItemList = customReply.genReplyItem(customReplyDataNode);
			if (!CollectionUtils.isEmpty(juItemList)){
				customReply.addReplyItemList(juItemList);
			}
		}
		return customReply;
	}
}
