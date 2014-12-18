package cc.pp.client.test;

import junit.framework.TestCase;
import cc.pp.rpc.domain.Result;
import client.replay.impl.DefaultRuleService;

public class RuleClientTest extends TestCase {
	
	DefaultRuleService ruleService = new DefaultRuleService();
	int uid = 216;
	
	public RuleClientTest(String name) {
		super(name);
	}

	protected void setUp() throws Exception {
		super.setUp();
		ruleService.setHost("http://test.rp.svc.pp.cc");
		
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}

	public void testGetCustomReplyText() {
		Result ruleResult = ruleService.search(uid, "注意事项");
		String responseText = ruleResult.getResponseText();
		assertTrue("获取自定义文本内容失败", responseText != null);
	}
	
	public void testGetCustomReplyNews() {
		Result ruleResult = ruleService.search(uid, "今日促销");
		String responseText = ruleResult.getResponseText();
		assertTrue("获取自定义图文内容失败", responseText != null);
	}
}
