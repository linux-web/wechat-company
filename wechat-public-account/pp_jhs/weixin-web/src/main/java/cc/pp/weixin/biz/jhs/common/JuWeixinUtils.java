package cc.pp.weixin.biz.jhs.common;

import org.apache.commons.lang.StringUtils;

import cc.pp.weixin.biz.jhs.constant.OperateCode;
import cc.pp.weixin.biz.jhs.domain.FrontCat;
import cc.pp.weixin.constant.MsgType;


public class JuWeixinUtils {
	/**
	 * 是否展示欢迎内容
	 * @param param		用户请求参数 事件类型的值
	 * @return
	 */
	public static boolean isShowWelcome(String eventValue) {
		if (StringUtils.isNotEmpty(eventValue) 
				&& StringUtils.equalsIgnoreCase(MsgType.EVENT_SUBSCRIBE, eventValue)) {
			return true;
		}
		return false;
	}
	
	/**
	 * 是否展示操作菜单
	 * @param param		用户请求参数
	 * @return
	 */
	public static boolean isShowMenu(String param) {
		if (param == null || "".equals(param) 
			|| OperateCode.SHOW_MENU.equals(param.toLowerCase())) {
			return true;
		}
		return false;
	}

	/**
	 * 是否展示微信首页
	 * @param param		用户请求参数
	 * @return
	 */
	public static boolean isShowHome(String param) {
		if (param !=null 
				&& OperateCode.SHOW_HOME.equals(param.toLowerCase())) {
			return true;
		}
		return false;
	}
	
	/**
	 * 是否查询团购商品
	 * @param param			用户请求参数
	 * @return
	 */
	public static boolean isSearchJuItem(String param) {
		if (StringUtils.isEmpty(param)) {
			return false;
		}
		
		//直接输入页码的情况
		String extractPage = JuQueryUtils.extractPage(param);
		if (StringUtils.isNotEmpty(extractPage)){
			return true;
		}
		
		//获取前台类目名称
		FrontCat frontCat = JuQueryUtils.extractFrontCat(param);
		String frontCatId = JuQueryUtils.getFrontCatId(frontCat);
		
		//直接输入商品分类的情况
		if (StringUtils.isNotEmpty(frontCatId)){
			return true;
		}
		
		//获取操作类型
		String extractOperateInfo = JuQueryUtils.extractOperateInfo(param);
		extractOperateInfo = extractOperateInfo.toLowerCase();
		if (StringUtils.contains(extractOperateInfo,OperateCode.LOCATION_SEARCH_JU)
			|| StringUtils.contains(extractOperateInfo,OperateCode.SEARCH_MP_JU)
			|| StringUtils.contains(extractOperateInfo,OperateCode.SEARCH_BRAND_JU)
			|| StringUtils.contains(extractOperateInfo,OperateCode.SEARCH_HOME_JU)) {
			return true;
		}
		
		return false;
	}
	
	/**
	 * 是否在提问题
	 * @param param			用户请求参数
	 * @return
	 */
	public static boolean isUserAsk(String param) {
		if (param.startsWith("?")||param.startsWith("？")){
			return true;
		}
		return false;
	}
}
