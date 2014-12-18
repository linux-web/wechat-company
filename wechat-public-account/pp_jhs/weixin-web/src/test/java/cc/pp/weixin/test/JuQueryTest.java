package cc.pp.weixin.test;

import junit.framework.TestCase;

import org.apache.commons.lang.StringUtils;

import cc.pp.weixin.biz.jhs.common.JuQueryUtils;
import cc.pp.weixin.biz.jhs.domain.FrontCat;
import cc.pp.weixin.biz.jhs.domain.Query;
import cc.pp.weixin.constant.CommonConstants;

public class JuQueryTest extends TestCase {

	public JuQueryTest(String name) {
		super(name);
	}

	protected void setUp() throws Exception {
		super.setUp();
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testGetCatName() {
		String catNameParm = "服饰";
		FrontCat frontCat = JuQueryUtils.extractFrontCat(catNameParm);
		assertTrue("存在知道的类目信息", StringUtils.equals(frontCat.getCatName(), catNameParm));
		
		String catNameParm2 = "测试";
		FrontCat frontCat2 = JuQueryUtils.extractFrontCat(catNameParm2);
		assertTrue("不存在知道的类目信息", frontCat2 == null);
	}
	
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testGetCatId() {
		String catNameParm = "服饰";
		FrontCat frontCat = JuQueryUtils.getFrontCat(catNameParm);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(frontCat.getCatId(), "1000"));
	}
	
	/**
	 * 测试今日团的类目信息
	 */
	public void testextractFrontCatName() {
		String catNameParm = "我想团购服饰";
		FrontCat frontCat = JuQueryUtils.extractFrontCat(catNameParm);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(frontCat.getCatName(), "服饰"));
	}
	
	/**
	 * 测试今日团的链接是否正常
	 */
	public void testTodayJu() {
		Query query = new Query();
		String condition = "配饰3";
		query.initQuery(condition);
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=0"));
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=42000"));
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "page=3"));
	}
	
	/**
	 * 测试今日团的链接是否正常:前台类目首字母
	 */
	public void testTodayJu_Pinyin() {
		Query query = new Query();
		String condition = "ps3";
		query.initQuery(condition);
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=0"));
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=42000"));
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "page=3"));
	}
	
	/**
	 * 测试今日团的链接是否正常:同义词
	 */
	public void testTodayJu_Synonyms() {
		Query query = new Query();
		String condition = "头饰3";
		query.initQuery(condition);
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=0"));
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=42000"));
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "page=3"));
	}
	
	/**
	 * 测试今日团的链接是否正常:同义词
	 */
	public void testTodayJu_Synonyms_Pinyin() {
		Query query = new Query();
		String condition = "pj3";
		query.initQuery(condition);
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=0"));
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=42000"));
		assertTrue("解析今日团信息参数出错", StringUtils.contains(query.getQueryUrl(), "page=3"));
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testLocalCity() {
		Query query = new Query();
		String condition = "杭州酒店";
		query.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=39000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testLocalCity_Pinyin() {
		Query query = new Query();
		String condition = "杭州jd3";
		query.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=39000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "page=3"));
		
		condition = "杭州JD3";
		Query query2 = new Query();
		query2.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "frontCatId=39000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "page=3"));
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testLocalCity_Synonyms() {
		Query query = new Query();
		String condition = "杭州宾馆3";
		query.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=39000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "page=3"));
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testLocalCity_Synonyms_Pinyin() {
		Query query = new Query();
		String condition = "杭州bg3";
		query.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=39000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "page=3"));
		
		condition = "杭州BG3";
		Query query2 = new Query();
		query2.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "frontCatId=39000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "page=3"));
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testLocalLife() {
		Query query = new Query();
		String condition = "杭州生活服务";
		query.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=11000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testLocalCarService() {
		Query query = new Query();
		String condition = "杭州汽车服务";
		query.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=41000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testLocalCarHouse() {
		Query query = new Query();
		String condition = "杭州房产汽车";
		query.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=27000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
	}
	
	/**
	 * 测试本地团的城市参数是否能正常解析
	 */
	public void testLocalKTVBar() {
		String condition = "杭州KTV酒吧";
		Query query = new Query();
		query.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "frontCatId=46000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
		
		condition = "杭州KTV";
		Query query2 = new Query();
		query2.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "frontCatId=46000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query2.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
		
		condition = "杭州酒吧";
		Query query3 = new Query();
		query3.initQuery(condition);
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query3.getQueryUrl(), "type=1"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query3.getQueryUrl(), "frontCatId=46000"));
		assertTrue("解析本地生活城市信息参数出错", StringUtils.contains(query3.getQueryUrl(), "ck=%BA%BC%D6%DD&"));
	}
	
	/**
	 * 测试随机获取今日团前台类目
	 */
	public void testRandomTodayCatNames() {
		String randomTodayCatNames = JuQueryUtils.getRandomTodayCatNames();
		assertTrue("随机获取今日团前台类目出错:获取内容为空", StringUtils.isNotEmpty(randomTodayCatNames));
		
		String[] randomTodayCatNamesArr = randomTodayCatNames.split(CommonConstants.COMMA_SPLIT_FLAG);
		assertTrue("随机获取今日团前台类目出错:获取内容格式不对", randomTodayCatNamesArr != null  && randomTodayCatNamesArr.length ==3);
	}
	
	/**
	 * 测试随机获取今日团前台类目
	 */
	public void testRandomLocalCatNames() {
		String randomLocalCatNames = JuQueryUtils.getRandomLocalCatNames();
		assertTrue("随机获取本地团前台类目出错:获取内容为空", StringUtils.isNotEmpty(randomLocalCatNames));
		
		String[] randomLocalCatNamesArr = randomLocalCatNames.split(CommonConstants.COMMA_SPLIT_FLAG);
		assertTrue("随机获取本地团前台类目出错:获取内容格式不对", randomLocalCatNamesArr != null  && randomLocalCatNamesArr.length ==3);
	}
}
