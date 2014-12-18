package cc.pp.weixin.test;

import junit.framework.TestCase;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cc.pp.weixin.constant.Business;
import cc.pp.weixin.custom.replay.service.CustomReplyService;
import cc.pp.weixin.domain.custom.reply.CustomReply;

public class CustomReplyServiceTest extends TestCase {
	//IoC容器
	ApplicationContext context;
	
	public CustomReplyServiceTest(String name) {
		super(name);
	}

	protected void setUp() throws Exception {
		super.setUp();
		//读取配置文件实例化一个IoC容器
        context = new ClassPathXmlApplicationContext("spring-config/weixin-spring-config.xml");
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}

	public void testGetCustomReply() {
		/*CustomReplyService customReplyService = (CustomReplyService)context.getBean("customReplyService");
		CustomReply customReply = customReplyService.getCustomReply(Business.JU_UID);
		assertNotNull(customReply);*/
	}
	
	public void testGetMatchedCustomReply() {
		CustomReplyService customReplyService = (CustomReplyService)context.getBean("customReplyService");
		String content = "须知";
		Business.REPLYSERVICE_HOST = "http://test.rp.svc.pp.cc";
		CustomReply customReply = customReplyService.getMatchedCustomReply(216, content);
		assertNotNull(customReply);
		assertTrue("没有获取到匹配的自定义回复", customReply.getReplyItemList().size() > 0);
	}
}
