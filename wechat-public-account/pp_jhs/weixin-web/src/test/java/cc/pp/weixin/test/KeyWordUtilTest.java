package cc.pp.weixin.test;

import java.util.List;

import org.apache.commons.lang.StringUtils;

import cc.pp.weixin.domain.keyword.KeyWordInfo;
import cc.pp.weixin.utils.KeyWordUtil;
import junit.framework.TestCase;

public class KeyWordUtilTest extends TestCase {

	public KeyWordUtilTest(String name) {
		super(name);
	}

	protected void setUp() throws Exception {
		super.setUp();
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}

	public void testGetKeyWord() {
		String content = "我想知道注意事项";
		String result = KeyWordUtil.getKeyWords(content);
		List<KeyWordInfo> keyWordInfoList  = KeyWordUtil.getKeyWordList(content);
		assertNotNull("无法获取到分词结果", StringUtils.contains("注意", result));
		assertTrue("无法获取到分词结果",  keyWordInfoList.size() > 0);
	}
	
	public void testGetCategory() {
		String content = "我要团购电影票和美食";
		String result = KeyWordUtil.getKeyWords(content);
		assertNotNull("无法正确获取到类目", StringUtils.contains("美食", result));
		assertNotNull("无法正确获取到类目", StringUtils.contains("电影票", result));
		
		List<KeyWordInfo> keyWordInfoList  = KeyWordUtil.getKeyWordList(content);
		assertTrue("获取到的分词结果为空",  keyWordInfoList.size() > 0);
	}
	
	public void testGetCity() {
		String content = "我要团购杭州的电影票和美食";
		String result = KeyWordUtil.getKeyWords(content);
		assertNotNull("无法获取到城市信息", StringUtils.contains("杭州", result));
		
		List<KeyWordInfo> keyWordInfoList  = KeyWordUtil.getKeyWordList(content);
		assertTrue("获取到的分词结果为空",  keyWordInfoList.size() > 0);
	}
	
	public void testGetCityAndCategory() {
		String content = "我要团购杭州的电影票和美食";
		String result = KeyWordUtil.getKeyWords(content);
		assertNotNull("无法正确获取到类目", StringUtils.contains("电影票", result));
		assertNotNull("无法正确获取到类目", StringUtils.contains("美食", result));
		assertNotNull("无法获取到城市信息", StringUtils.contains("杭州", result));
		List<KeyWordInfo> keyWordInfoList  = KeyWordUtil.getKeyWordList(content);
		assertTrue("获取到的分词结果为空",  keyWordInfoList.size() > 0);
	}

}
