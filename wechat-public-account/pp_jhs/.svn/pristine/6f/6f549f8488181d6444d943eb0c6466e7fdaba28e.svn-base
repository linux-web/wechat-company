package cc.pp.weixin.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import junit.framework.TestCase;
import cc.pp.weixin.biz.jhs.domain.FrontCat;
import cc.pp.weixin.util.PinyinUtils;

public class FrontCatTest extends TestCase {
	//今日团商品前台类目
	private static Map<String,FrontCat> todayFrontCatMap  = new HashMap<String,FrontCat>();
	//本地生活前台类目
	private static Map<String,FrontCat> localFrontCatMap = new HashMap<String,FrontCat>();
	
	public FrontCatTest(String name) {
		super(name);
	}

	protected void setUp() throws Exception {
		todayFrontCatMap  = FrontCat.genTodayFrontCatMap();
		localFrontCatMap = FrontCat.genLocalFrontCatMap();
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}
	
	/**
	 * 测试今日团的类目信息
	 */
	public void testRepeatFrontCatName() {
		Map<String,List<String>> repeatFrontCatNameMap = new HashMap<String,List<String>>();
		Map<String,List<String>> repeatFrontCatNameMap2 = new HashMap<String,List<String>>();
		
		List<String> list = null;
		List<String> list2 = null;
		//------------------------------------
		for (String key:todayFrontCatMap.keySet()){
			FrontCat frontCat = todayFrontCatMap.get(key);
			String catName  = frontCat.getCatName();
			if (repeatFrontCatNameMap.containsKey(catName)){
				list = repeatFrontCatNameMap.get(catName);
			} else {
				list = new ArrayList<String>();
			}
			list.add(catName);
			repeatFrontCatNameMap.put(catName, list);
			
			List<String> synonymsList = frontCat.getSynonymsList();
			for (String synonyms:synonymsList){
				if (repeatFrontCatNameMap.containsKey(synonyms)){
					list = repeatFrontCatNameMap.get(synonyms);
				} else {
					list = new ArrayList<String>();
				}
				list.add(synonyms);
				repeatFrontCatNameMap.put(synonyms, list);
			}
		}
		
		for (String key:localFrontCatMap.keySet()){
			FrontCat frontCat = localFrontCatMap.get(key);
			String catName  = frontCat.getCatName();
			if (repeatFrontCatNameMap.containsKey(catName)){
				list = repeatFrontCatNameMap.get(catName);
			} else {
				list = new ArrayList<String>();
			}
			list.add(catName);
			repeatFrontCatNameMap.put(catName, list);
			
			List<String> synonymsList = frontCat.getSynonymsList();
			for (String synonyms:synonymsList){
				if (repeatFrontCatNameMap.containsKey(synonyms)){
					list = repeatFrontCatNameMap.get(synonyms);
				} else {
					list = new ArrayList<String>();
				}
				list.add(synonyms);
				repeatFrontCatNameMap.put(synonyms, list);
			}
		}
		
		//------------------------------------
		for (String key:todayFrontCatMap.keySet()){
			FrontCat frontCat = todayFrontCatMap.get(key);
			String catName  = frontCat.getCatName();
			String catNameInitials = PinyinUtils.getInitials(catName);
			if (repeatFrontCatNameMap2.containsKey(catNameInitials)){
				list2 = repeatFrontCatNameMap2.get(catNameInitials);
			} else {
				list2 = new ArrayList<String>();
			}
			list2.add(catName);
			repeatFrontCatNameMap2.put(catNameInitials, list2);
			
			List<String> synonymsList = frontCat.getSynonymsList();
			for (String synonyms:synonymsList){
				String synonymsInitials = PinyinUtils.getInitials(synonyms);
				if (repeatFrontCatNameMap2.containsKey(synonymsInitials)){
					list2 = repeatFrontCatNameMap2.get(synonymsInitials);
				} else {
					list2 = new ArrayList<String>();
				}
				list2.add(synonyms);
				repeatFrontCatNameMap2.put(synonymsInitials, list2);
			}
		}
		
		for (String key:localFrontCatMap.keySet()){
			FrontCat frontCat = localFrontCatMap.get(key);
			String catName  = frontCat.getCatName();
			String catNameInitials = PinyinUtils.getInitials(catName);
			if (repeatFrontCatNameMap2.containsKey(catNameInitials)){
				list2 = repeatFrontCatNameMap2.get(catNameInitials);
			} else {
				list2 = new ArrayList<String>();
			}
			list2.add(catName);
			repeatFrontCatNameMap2.put(catNameInitials, list2);
			
			List<String> synonymsList = frontCat.getSynonymsList();
			for (String synonyms:synonymsList){
				String synonymsInitials = PinyinUtils.getInitials(synonyms);
				if (repeatFrontCatNameMap2.containsKey(synonymsInitials)){
					list2 = repeatFrontCatNameMap2.get(synonymsInitials);
				} else {
					list2 = new ArrayList<String>();
				}
				list2.add(synonyms);
				repeatFrontCatNameMap2.put(synonymsInitials, list2);
			}
		}
		
		for (String key:repeatFrontCatNameMap.keySet()){
			List<String> catNameList = repeatFrontCatNameMap.get(key);
			assertTrue("解析本地生活城市信息参数出错", catNameList.size() ==1);
		}
		
		for (String key:repeatFrontCatNameMap2.keySet()){
			List<String> synonymsInitialsList = repeatFrontCatNameMap2.get(key);
			if (synonymsInitialsList.size() > 1){
				System.out.println(synonymsInitialsList);
			}
			assertTrue("解析本地生活城市信息参数出错", synonymsInitialsList.size() == 1);
		}
	}
}
