package cc.pp.weixin.biz.jhs.ao.impl;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.dom4j.Element;

import cc.pp.weixin.biz.jhs.ao.JuBusinessAO;
import cc.pp.weixin.biz.jhs.common.JuWeixinUtils;
import cc.pp.weixin.biz.jhs.common.ShowInfoUtils;
import cc.pp.weixin.biz.jhs.manage.JuWeixinManage;
import cc.pp.weixin.constant.Business;
import cc.pp.weixin.constant.MsgFieldName;
import cc.pp.weixin.constant.MsgType;
import cc.pp.weixin.custom.replay.service.CustomReplyService;
import cc.pp.weixin.domain.custom.reply.CustomReply;
import cc.pp.weixin.domain.message.event.EventMessage;
import cc.pp.weixin.domain.message.request.LocationRequestMessage;
import cc.pp.weixin.domain.message.request.TextRequestMessage;

public class DefaultJuBusinessAO implements JuBusinessAO{
	private static Logger logger = Logger.getLogger(DefaultJuBusinessAO.class);
	
	private JuWeixinManage juWeixinManage;
	public void setJuWeixinManage(JuWeixinManage juWeixinManage) {
		this.juWeixinManage = juWeixinManage;
	}

	private CustomReplyService customReplyService;
	public void setCustomReplyService(CustomReplyService customReplyService) {
		this.customReplyService = customReplyService;
	}
	
	@Override
	public String getWeixinMsg(Element rootElement) {
		//获取消息信息
		String toUserName = "";
		String fromUserName = "";
		String msgType = "";
		String responseStr =  "";
		try {
			if (rootElement != null){
				toUserName = rootElement.elementText(MsgFieldName.TO_USER_NAME);
				fromUserName = rootElement.elementText(MsgFieldName.FROM_USER_NAME);
				msgType = rootElement.elementText(MsgFieldName.MSG_TYPE);
			}
			
			//业务处理服务
			if (MsgType.TEXT.equals(msgType)){//文本消息
				//获取文本请求数据
				TextRequestMessage txtRequestMsg = new TextRequestMessage(rootElement);
				String content = txtRequestMsg.getContent();
				
				if (JuWeixinUtils.isShowMenu(content)) {
					responseStr =  ShowInfoUtils.showOperateMenu(fromUserName,toUserName);
				} else if (JuWeixinUtils.isShowHome(content)) {//图文消息
					//获取微信默认首页
					responseStr =  ShowInfoUtils.getHomePage(txtRequestMsg);
				} else if (JuWeixinUtils.isSearchJuItem(content)) {//查询团购商品
					//获取查询的团购商品
					responseStr =  juWeixinManage.showJuItemPage(txtRequestMsg);
				} else {//获取自定义回复内容
					//获取帮助内容
					CustomReply customReply = new CustomReply();
					
					CustomReply matchedCustomReply = customReplyService.getMatchedCustomReply(Business.JU_UID, content);
					if (matchedCustomReply != null){
						 customReply = matchedCustomReply;
					}
					responseStr = customReply.getWeixinResponse(fromUserName,toUserName);
					
					//没有获取到自定义回复，就展示默认内容
					if (StringUtils.equals(responseStr, StringUtils.EMPTY)){
						responseStr =  ShowInfoUtils.showCustomInfo(fromUserName,toUserName,content);
					}
				}
			}else if (MsgType.LOCATION.equals(msgType)){
				//获取地理位置信息
				LocationRequestMessage locationRequestMessage = new LocationRequestMessage(rootElement);
				//获取查询的酒店团购商品
				responseStr =  juWeixinManage.showLocalJuItemPage(locationRequestMessage);
				logger.info("用户向我们发送了地理位置信息了");
			}else if (MsgType.EVENT.equals(msgType)){
				//展示欢迎页面
				EventMessage eventMessage = new EventMessage(rootElement);
				boolean isShowWelcome = JuWeixinUtils.isShowWelcome(eventMessage.getEvent());
				String eventLogInfo =  "有事件消息被推送";
				if (isShowWelcome){
					responseStr =  ShowInfoUtils.showWelcome(fromUserName,toUserName);
					eventLogInfo =  eventLogInfo + ":用户关注";
				} else {//展示操作菜单
					responseStr =  ShowInfoUtils.showOperateMenu(fromUserName,toUserName);
					eventLogInfo =  eventLogInfo + ":用户取消关注";
				}
				logger.info(eventLogInfo);
			}else if (MsgType.VOICE.equals(msgType)){
				//响应语音提示
				responseStr =  ShowInfoUtils.showVoiceInfo(fromUserName,toUserName);
				logger.info("用户向我们的微信账号说话了");
			}else{
				//无法识别的操作，提示操作菜单
				responseStr =  ShowInfoUtils.showOperateMenu(fromUserName,toUserName);
			}
		} catch (Exception e) {
			//出现异常情况时，系统默认提示
			responseStr =  ShowInfoUtils.showSystemInfo(fromUserName,toUserName);
			logger.error("When JuWeinxin Process Request Error", e);
		}
		//响应结果
		return responseStr;
	}
}
