package cc.pp.weixin.biz.jhs.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.springframework.util.CollectionUtils;

import cc.pp.weixin.biz.jhs.constant.OperateCode;
import cc.pp.weixin.biz.jhs.domain.FrontCat;
import cc.pp.weixin.constant.CommonConstants;
import cc.pp.weixin.util.PinyinUtils;


public class JuQueryUtils {
	//今日团商品前台类目
	private static Map<String,FrontCat> todayFrontCatMap  = new HashMap<String,FrontCat>();
	//本地生活前台类目
	private static Map<String,FrontCat> localFrontCatMap = new HashMap<String,FrontCat>();
	
	static {
		todayFrontCatMap  = FrontCat.genTodayFrontCatMap();
		localFrontCatMap = FrontCat.genLocalFrontCatMap();
	}
	
	/**
	 * 从前台类目对象中，获取商品分类ID
	 * @param param			前台类目对象
	 * @return				商品分类ID
	 */
	public static String getFrontCatId(FrontCat frontCat) {
		if (frontCat != null){
			return frontCat.getCatId();
		}
		return null;
	}
	
	/**
	 * 从前台类目对象中，获取商品分类名称
	 * @param param			前台类目对象
	 * @return				商品分类名称
	 */
	public static String getFrontCatName(FrontCat frontCat) {
		if (frontCat != null){
			return frontCat.getCatName();
		}
		return null;
	}
	
	/**
	 * 根据用户的输入参数，获取商品分类ID
	 * @param param			用户请求参数
	 * @return				商品分类ID
	 */
	public static FrontCat getFrontCat(String param) {
		if (StringUtils.isEmpty(param) || param.length() <2){
			return null;
		}
		
		FrontCat frontCat = new FrontCat();
		//-------首先进行前台类目名称的匹配--------
		//遍历今日团商品前台类目，匹配商品分类信息
		for (String key:todayFrontCatMap.keySet()){
			frontCat = todayFrontCatMap.get(key);
			if (frontCat.existCurCatName(param)){
				return frontCat;
			}
		}
		//遍历所有本地生活前台类目，匹配商品分类信息
		for (String key:localFrontCatMap.keySet()){
			frontCat = localFrontCatMap.get(key);
			if (frontCat.existCurCatName(param)){
				return frontCat;
			}
		}
		
		//-------前台类目名称的匹配不到，按照类目的同义词进行匹配--------
		//遍历今日团商品前台类目，匹配商品分类信息
		for (String key:todayFrontCatMap.keySet()){
			frontCat = todayFrontCatMap.get(key);
			if (frontCat.existCurSynonymsCatName(param)){
				return frontCat;
			}
		}
		
		//遍历所有本地生活前台类目，匹配商品分类信息
		for (String key:localFrontCatMap.keySet()){
			frontCat = localFrontCatMap.get(key);
			if (frontCat.existCurSynonymsCatName(param)){
				return frontCat;
			}
		}
		return null;
	}
	
	/**
	 * 根据前台类目分类ID，判定是否为本地团的分类
	 * @param frontCatId	前台类目分类ID
	 * @return				true:本地团的分类
	 * 						false:不是本地团的分类
	 */
	public static boolean isLocalFrontCatId(String frontCatId) {
		if (StringUtils.isEmpty(frontCatId)){
			return false;
		}
		
		//遍历所有本地生活前台类目，匹配商品分类信息
		for (String key:localFrontCatMap.keySet()){
			if (StringUtils.equals(key, frontCatId)){
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 从用户的查询条件中，抽取出页码
	 * 
	 * @param condition			用户的查询条件
	 * @return					页码
	 */
	public static String extractPage(String condition){
		//页码的最大长度
		int numericLen = 3;
		if (StringUtils.isEmpty(condition)){
			return "";
		}
		condition = condition.trim();
		
		//按最大长度的次序获取页码
		for (int numericLenIndex = numericLen;numericLenIndex > 0;numericLenIndex--){
			int len = condition.length();
			for (int index = 0;index + numericLenIndex <= len;index++){
				String subStr = condition.substring(index,index + numericLenIndex);
				if (StringUtils.isNumeric(subStr)){
					return subStr;
				}
			}
		}
		return "";
	}
	
	/**
	 * 从用户的查询条件中，抽取出前台类目信息
	 * 
	 * @param condition			用户的查询条件
	 * @return					前台类目对象
	 */
	public static FrontCat extractFrontCat(String condition){
		FrontCat frontCat = null;
		FrontCat frontCatTemp = null;
		if (StringUtils.isEmpty(condition)){
			return frontCat;
		}
		
		//替换掉空格
		condition = condition.trim();
		
		int len = condition.length();
		for (int subLen = 2;subLen<=len;subLen++){//前台类目的最小长度 
			for (int index = len;index >= subLen;index--){
				String subStr = condition.substring(index - subLen,index);
				frontCat = JuQueryUtils.getFrontCat(subStr);
				if (frontCat == null){
					continue;
				}
				//默认匹配到的第一个为想要的结果
				if (frontCatTemp == null){
					frontCatTemp = frontCat;
				}
				//看是否能找到完全匹配的
				if (StringUtils.equals(subStr, frontCat.getCatName())
					|| StringUtils.equals(subStr, PinyinUtils.getInitials(frontCat.getCatName()))){
					return frontCat;
				}
			}
		}
		//最后没找到完全匹配的，就用第一个模糊匹配的结果
		return frontCatTemp;
	}
	
	/**
	 * 从用户的查询条件中，抽取出操作类型
	 * 
	 * @param condition			用户的查询条件
	 * @return					操作类型
	 */
	public static String extractOperateInfo(String condition){
		String operateCodeStr = "";
		if (StringUtils.isEmpty(condition)){
			return operateCodeStr;
		}
		
		condition = condition.trim();
		//替换掉页码
		String extractPage = JuQueryUtils.extractPage(condition);
		condition = StringUtils.replace(condition, extractPage, "");
		
		//替换掉前台类目
		FrontCat frontCat = JuQueryUtils.extractFrontCat(condition);
		if (frontCat != null){
			condition = StringUtils.replace(condition.toLowerCase(), frontCat.getMactchedCatName(), "");
			//单独输入 KTV 或 酒吧时的容错处理
			String frontCatName = JuQueryUtils.getFrontCatName(frontCat);
			if (StringUtils.equals(frontCatName, "KTV酒吧")){
				condition = StringUtils.replace(condition.toLowerCase(), "ktv", "");
				condition = StringUtils.replace(condition, "酒吧", "");
			}
		}
		
		//剩下的就只有操作码了（本地团会带上城市）
		condition = condition.toLowerCase();
		if (StringUtils.contains(condition, OperateCode.SEARCH_MP_JU)){
			operateCodeStr =  OperateCode.SEARCH_MP_JU;
		} else if (StringUtils.contains(condition, OperateCode.SEARCH_BRAND_JU)){
			operateCodeStr =  OperateCode.SEARCH_BRAND_JU;//品牌团
		}else if (StringUtils.contains(condition, OperateCode.SEARCH_HOME_JU)){
			operateCodeStr =  OperateCode.SEARCH_HOME_JU;//聚家装
		} else {//本地团输入城市的情况
			operateCodeStr =  condition;//要带上城市信息，所以返回condition
		}
		
		return operateCodeStr;
	}
	
	/**
	 * 从用户的查询条件中，抽取出地理位置信息
	 * 
	 * @param label			用户发送的地理位置描述
	 * @return			    本地团参数查询此参数，格式：b城市，例如：b杭州
	 */
	public static String extractCity(String label){
		if (StringUtils.isEmpty(label)){
			return "";
		}
		int beginIndex = label.indexOf("省") + 1;
		if(beginIndex < 0){
			beginIndex = 0;
		}
		int endIndex = label.indexOf("市");
		if(endIndex < 0){
			return "";
		}
		String city = label.substring(beginIndex, endIndex);
		
		return  city;
	}
	
	/**
	 * 随机获取前台类目列表中的三个前台类目名称
	 * 
	 * @return				三个前台类目名称列表
	 */
	private static  String getRandomCatNames(Map<String,FrontCat> frontCatMap) {
		if (CollectionUtils.isEmpty(frontCatMap)){
			return StringUtils.EMPTY;
		}
		Set<Map.Entry<String,FrontCat>> frontCatMapSet = frontCatMap.entrySet();
		int size = frontCatMapSet.size();
		
		//获取三个随机整数下标
		List<Integer> randomIndexList = new ArrayList<Integer>();
		Random rand = new Random();
		while (randomIndexList.size() < 3){
			int randInt = rand.nextInt(size);
			if (!randomIndexList.contains(randInt)){
				randomIndexList.add(randInt);
			}
		}
		
		int index = 0;
		String frontCatNames = "";
		for (Entry<String,FrontCat> entry:frontCatMapSet){
			if (randomIndexList.contains(index)){
				if (StringUtils.isEmpty(frontCatNames)){
					frontCatNames = JuQueryUtils.getFrontCatName(entry.getValue());
				} else {
					frontCatNames = frontCatNames + CommonConstants.COMMA_SPLIT_FLAG + JuQueryUtils.getFrontCatName(entry.getValue());
				}
			}
			index++;
		}
		if (StringUtils.isNotEmpty(frontCatNames)){
			return frontCatNames;
		}
		return StringUtils.EMPTY;
	}
	public static  String getRandomTodayCatNames() {
		return JuQueryUtils.getRandomCatNames(todayFrontCatMap);
	}
	
	public static  String getRandomLocalCatNames() {
		return JuQueryUtils.getRandomCatNames(localFrontCatMap);
	}
}
