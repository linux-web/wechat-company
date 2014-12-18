package cc.pp.weixin.biz.jhs.manage;

import cc.pp.weixin.biz.jhs.domain.TodayJuItem;
import cc.pp.weixin.domain.message.request.LocationRequestMessage;
import cc.pp.weixin.domain.message.request.TextRequestMessage;

public interface JuWeixinManage {
	/**
	 * 根据查询条件，获取团商品信息
	 * @param condition  	用户输入的条件
	 * @return			 	团聚划算宝贝信息
	 */
	TodayJuItem searchJuItemList(String condition);
	
	/**
	 * 按照微信平台的格式，把获取搜索到的团的商品展示给用户
	 * @param param		用户请求信息
	 * @return			团聚划算宝贝信息内容
	 */
	String showJuItemPage(TextRequestMessage txtRequestMsg);
	
	/**
	 * 按照微信平台的格式，把获取搜索到的本地团的酒店信息展示给用户
	 * @param param		用户请求信息
	 * @return			团聚划算宝贝信息内容
	 */
	String showLocalJuItemPage(LocationRequestMessage locationRequestMessage);
	
}
