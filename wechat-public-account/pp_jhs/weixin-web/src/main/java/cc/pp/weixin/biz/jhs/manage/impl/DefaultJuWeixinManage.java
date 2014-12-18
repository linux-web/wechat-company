package cc.pp.weixin.biz.jhs.manage.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonNode;

import cc.pp.weixin.biz.jhs.common.JuQueryUtils;
import cc.pp.weixin.biz.jhs.common.ShowInfoUtils;
import cc.pp.weixin.biz.jhs.constant.JuConstant;
import cc.pp.weixin.biz.jhs.constant.OperateCode;
import cc.pp.weixin.biz.jhs.domain.FrontCat;
import cc.pp.weixin.biz.jhs.domain.JuItem;
import cc.pp.weixin.biz.jhs.domain.Query;
import cc.pp.weixin.biz.jhs.domain.TodayJuItem;
import cc.pp.weixin.biz.jhs.manage.JuWeixinManage;
import cc.pp.weixin.constant.Business;
import cc.pp.weixin.domain.message.MessageItem;
import cc.pp.weixin.domain.message.request.LocationRequestMessage;
import cc.pp.weixin.domain.message.request.TextRequestMessage;
import cc.pp.weixin.domain.message.response.NewsResponseMessage;
import cc.pp.weixin.util.HttpUtils;
import cc.pp.weixin.util.JsonUtils;
import cc.pp.weixin.util.LocationUtils;


public class DefaultJuWeixinManage implements JuWeixinManage {
	
	private static Logger logger = Logger.getLogger(DefaultJuWeixinManage.class);

	public DefaultJuWeixinManage() {
		
	}

	@Override
	public TodayJuItem searchJuItemList(String condition) {
		TodayJuItem todayJuItem = null;
		Query query = new Query();
		
		//解析condition，初始化 Query
		query.initQuery(condition);
		String url = query.getQueryUrl();
		//打印请求参数
		if (Business.LOG_INFO_SWITCH ){
			logger.info("The search url is:" + url);
		}
		
		//调用聚划算服务，获取聚划算商品信息
		String response = HttpUtils.doGet(url, "GBK");
		
		//解析聚划算返回的JSON信息
		if (StringUtils.isNotEmpty(response)){
			response = response.replace("(", "").replace(")", "");
			JsonNode todayJuItemNode = JsonUtils.getJsonNode(response);
			if (todayJuItemNode == null){
				return todayJuItem;
			}
			
			//获取今日团商品信息
			todayJuItem = new TodayJuItem();
			//今日团商品的总页数
			long currentTime = todayJuItemNode.get(JuConstant.CURRENT_TIME).asLong();
			todayJuItem.setCurrentTime(currentTime);
			
			//今日团商品的总页数
			int totalPage = todayJuItemNode.get(JuConstant.TOTAL_PAGE).asInt();
			todayJuItem.setTotalPage(totalPage);
			
			//今日团商品列表
			JsonNode itemListNode = JsonUtils.getJsonNode(todayJuItemNode,JuConstant.ITEM_LIST);
			if (itemListNode != null){
				List<JuItem> juItemList = new ArrayList<JuItem>();
				for (JsonNode iteNode:itemListNode){
					JuItem juItem = new JuItem();
					
					//宝贝ID
					juItem.setItemId(iteNode.get(JuConstant.ITEM_ID).asLong());
					
					//宝贝链接(直接根据宝贝ID拼接连接)
					//juItem.setItemUrl(iteNode.get(JuConstant.ITEM_URL).asText());
					
					//宝贝标题
					juItem.setShortName(iteNode.get(JuConstant.SHORT_NAME).asText());
					
					//宝贝图片链接
					juItem.setPicUrl(iteNode.get(JuConstant.PIC_URL).asText());
					
					//宝贝原价
					juItem.setOriginalPrice(iteNode.get(JuConstant.ORIGINAL_PRICE).asDouble());
					
					//宝贝参团价
					juItem.setActivityPrice(iteNode.get(JuConstant.ACTIVITYP_RICE).asDouble());
					
					//宝贝实际参团价
					juItem.setRealActicityPrice(iteNode.get(JuConstant.REAL_ACTICITY_PRICE).asDouble());
					
					//宝贝折扣
					juItem.setDiscount(iteNode.get(JuConstant.DISCOUNT).asDouble());
					
					//宝贝城市
					juItem.setCity(iteNode.get(JuConstant.CITY).asText());
					
					//宝贝已售数量
					juItem.setSoldCount(iteNode.get(JuConstant.SOLD_COUNT).asInt());
					
					juItemList.add(juItem);
				}
				todayJuItem.setJuItemList(juItemList);
			}
		}
		return todayJuItem;
	}

	@Override
	public String showJuItemPage(TextRequestMessage txtRequestMsg) {
		String fromUserName = txtRequestMsg.getFromUserName();
		String toUserName = txtRequestMsg.getToUserName();
		String condition = txtRequestMsg.getContent();
		
		//初始化图文信息对象必要的参数
		NewsResponseMessage newsResMsg = new NewsResponseMessage();
		newsResMsg.setFromUserName(fromUserName);
		newsResMsg.setToUserName(toUserName);
		List<MessageItem> msgItemList = new ArrayList<MessageItem>();
		newsResMsg.setMsgItemList(msgItemList);
		
		String responseStr =  this.getNewsResponseMessage(newsResMsg, condition);
		return responseStr;
	}
	
	/** 
     * 根据请求信息，返回图文信息 
     * 
     * @param newsResMsg    根据请求信息封装的响应图文对象
     * @param condition     请求的用于查询的条件 
     * @return 				 图文信息 
     */ 
	public String getNewsResponseMessage(NewsResponseMessage newsResMsg,String condition) {
		//查询结果提醒
		String info = "";		
		if(StringUtils.isEmpty(condition)){
			//没有搜索条件的情况
			info =  "您没有输入条件，无法查找到相关的商品";
		}
		
		TodayJuItem todayJuItem = this.searchJuItemList(condition);
		if(todayJuItem == null){
			//返回的数据格式改变，无法查找到对应的结果
			info =  "系统功能升级维护中，请稍后再试！";
		}
		List<JuItem> juItemList = todayJuItem.getJuItemList();
		if(juItemList == null || juItemList.size() ==0){
			//没有查找到商品的情况
			info =  "根据您的搜索条件，没有找到相关的商品" + "\n";
			String pageNo = JuQueryUtils.extractPage(condition);
			if (StringUtils.isNotEmpty(pageNo)){
				int pageNoValue = Integer.valueOf(pageNo);
				if (pageNoValue > 1){
					info =  info + "您输入的页码范围可能过大" + "\n";
				}
			}
			//获取前台类目名称
			FrontCat frontCat = JuQueryUtils.extractFrontCat(condition);
			String frontCatId = JuQueryUtils.getFrontCatId(frontCat);
			//判定是否为本地团的分类
			boolean isLocalFrontCatId = JuQueryUtils.isLocalFrontCatId(frontCatId);
			if (isLocalFrontCatId){
				info =  info + "查询本地团时，未设置城市" + "\n";
			}
			info =  info + "请更换条件重试！";
		}
		
		//没有查询到结果的提醒
		if(StringUtils.isNotEmpty(info)){
			String showSearchEmptyInfo = 
					ShowInfoUtils.showSearchEmptyInfo(newsResMsg.getFromUserName(),newsResMsg.getToUserName(),info);
			return showSearchEmptyInfo;
		}
		
		for (JuItem juItem:juItemList){
			//默认第一个item为大图
			MessageItem msgItem = new MessageItem();
			
			//获取标题信息
			String title = ShowInfoUtils.getMsgItemTitle(juItem);
			msgItem.setTitle(title);
			
			//获取图片
			msgItem.setPicUrl(juItem.getPicUrl());
			
			//获取链接
			msgItem.setUrl(juItem.getItemUrl());
			newsResMsg.addMsgItem(msgItem);
		}
		
		String responseStr =  newsResMsg.getReponseMsg();
		return responseStr;
	}

	@Override
	public String showLocalJuItemPage(LocationRequestMessage locationRequestMessage) {
		String fromUserName = locationRequestMessage.getFromUserName();
		String toUserName = locationRequestMessage.getToUserName();
		String label = locationRequestMessage.getLabel();
		if (Business.LOG_INFO_SWITCH){
			logger.info("LocationRequestMessage Label is:" + label);
		}
		String extractCity = "";
		if (StringUtils.isEmpty(label)){
			extractCity = LocationUtils.getCity(
					locationRequestMessage.getLocationX(), locationRequestMessage.getLocationY());
			extractCity = StringUtils.replace(extractCity, "市", "");
		} else {
			extractCity = JuQueryUtils.extractCity(label);
		}
		
		if (Business.LOG_INFO_SWITCH){
			logger.info("JuQueryUtils.extractCity is:" + extractCity);
			if (StringUtils.isNotEmpty(label) && StringUtils.isEmpty(extractCity)){
				logger.info("when label is:" + label + "got condition is empty");
			}
		}
		//按照固定的数据格式组合本地团的地理位置搜索条件（利用微信发送地理位置时用）
		String condition = OperateCode.LOCATION_SEARCH_JU + extractCity;
		
		//初始化图文信息对象必要的参数
		NewsResponseMessage newsResMsg = new NewsResponseMessage();
		newsResMsg.setFromUserName(fromUserName);
		newsResMsg.setToUserName(toUserName);
		List<MessageItem> msgItemList = new ArrayList<MessageItem>();
		newsResMsg.setMsgItemList(msgItemList);
		
		String responseStr =  this.getNewsResponseMessage(newsResMsg, condition);
		return responseStr;
	}
}
