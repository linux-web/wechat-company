package cc.pp.weixin.biz.jhs.constant;

import cc.pp.weixin.constant.MsgType;

public interface OperateCode {
	/**
	 * 帮助菜单
	 */
	String SHOW_MENU = "h";
	
	/**
	 * 聚划算微信首页
	 */
	String SHOW_HOME= "w";
	
	/**
	 * 利用地图查询
	 */
	String LOCATION_SEARCH_JU = MsgType.LOCATION;
	
	/**
	 * 聚名品商品查询
	 */
	String SEARCH_MP_JU = "m";
	
	/**
	 * 品牌团
	 */
	String SEARCH_BRAND_JU = "p";
	
	/**
	 * 聚家装
	 */
	String SEARCH_HOME_JU = "z";
}
