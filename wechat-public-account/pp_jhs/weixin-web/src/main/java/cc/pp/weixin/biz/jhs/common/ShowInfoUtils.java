package cc.pp.weixin.biz.jhs.common;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import cc.pp.weixin.biz.jhs.constant.OperateCode;
import cc.pp.weixin.biz.jhs.domain.JuItem;
import cc.pp.weixin.constant.CommonConstants;
import cc.pp.weixin.constant.FaceValue;
import cc.pp.weixin.domain.message.MessageItem;
import cc.pp.weixin.domain.message.request.TextRequestMessage;
import cc.pp.weixin.domain.message.response.NewsResponseMessage;
import cc.pp.weixin.domain.message.response.TextResponseMessage;

public class ShowInfoUtils {
	/**
	 * 根据用户的输入， 获取微信默认首页
	 * @param param		用户请求信息
	 * @return			聚划算首页内容
	 */
	public static String getHomePage(TextRequestMessage txtRequestMsg) {
		String fromUserName = txtRequestMsg.getFromUserName();
		String toUserName = txtRequestMsg.getToUserName();
		//初始化图文信息对象必要的参数
		NewsResponseMessage newsResMsg = new NewsResponseMessage();
		newsResMsg.setFromUserName(fromUserName);
		newsResMsg.setToUserName(toUserName);
		
		List<MessageItem> msgItemList = new ArrayList<MessageItem>();
		//聚划算首页，默认第一个item为大图
		MessageItem item1 = new MessageItem();
		item1.setTitle(" ");
		item1.setDescription("聚划算——惊喜无限");
		item1.setPicUrl("http://img03.taobaocdn.com/tps/i3/T113FyXsddXXbeVyM5-110-53.png");
		item1.setUrl("http://ju.m.taobao.com/");
		msgItemList.add(item1);
		
		//商品团
		MessageItem item3 = new MessageItem();
		item3.setTitle("商品团");
		item3.setDescription("聚划算商品团购");
		item3.setPicUrl("http://img01.taobaocdn.com/bao/uploaded/i4/T1xhh_XzlbXXb1upjX.jpg_460x460.jpg");
		item3.setUrl("http://wtm.m.taobao.com/jhs/list.htm?pic=small");
		msgItemList.add(item3);
		
		//品牌团
		MessageItem item4 = new MessageItem();
		item4.setTitle("品牌团");
		item4.setDescription("聚划算品牌商品团购");
		item4.setPicUrl("http://img2012.i02.wimg.taobao.com/bao/uploaded/i2/T1vOpTXDVXXXb1upjX.jpg_120x120.jpg");
		item4.setUrl("http://wtm.m.taobao.com/jhs/brand.htm?pic=small");
		msgItemList.add(item4);
		
		//城市团
		MessageItem item5 = new MessageItem();
		item5.setTitle("城市团");
		item5.setDescription("聚划算城市团购");
		item5.setPicUrl("http://img01.taobaocdn.com/bao/uploaded/i2/T1YbpZXvtbXXb1upjX.jpg_460x460.jpg");
		item5.setUrl("http://wtm.m.taobao.com/jhs/life.htm?pic=small");
		msgItemList.add(item5);
		
		newsResMsg.setMsgItemList(msgItemList);
		
		String responseStr =  newsResMsg.getReponseMsg();
		
		return responseStr;
	}
	
	/**
	 * 获取默认的响应内容给用户，提示给用户操作菜单
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 * @return				展示操作菜单提示
	 */
	public static String showWelcome(String fromUserName,String toUserName) {
		TextResponseMessage textResMsg = new TextResponseMessage();
		textResMsg.setFromUserName(fromUserName);
		textResMsg.setToUserName(toUserName);
		String    content =  FaceValue.SMILE + "欢迎关注小聚"+ "\n";
		content = content + "这里能快速找到小聚为您精选挑选的每日新鲜出炉的优质淘宝聚划算商品" + "\n";
		
		content = content + "\n";
		
		content = content + "回复 " + OperateCode.SHOW_MENU + " 小聚会告诉您如何操作" + "\n";
		
		textResMsg.setContent(content);
		return textResMsg.getReponseMsg();
	}
	
	/**
	 * 当用户对我们说话时，我们响应提示给用户
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 * @return				响应语音提示
	 */
	public static String showVoiceInfo(String fromUserName,String toUserName) {
		TextResponseMessage textResMsg = new TextResponseMessage();
		textResMsg.setFromUserName(fromUserName);
		textResMsg.setToUserName(toUserName);
		String    content =  FaceValue.NAUGHTY + "啊哦！真的是好声音呀"+ "\n";
		content = content + "可惜小聚现在还无法识别" + "\n";
		content = content + "还好小聚我很勤奋，正在学习声音识别,"
				          + "敬请关注以后偶的语音识别能力呀，嘿嘿！" + "\n";
		
		content = content + "\n";
		
		content = content + "回复 " + OperateCode.SHOW_MENU + " 小聚会告诉您如何操作" + "\n";
		
		textResMsg.setContent(content);
		return textResMsg.getReponseMsg();
	}
	
	/**
	 * 获取默认的响应内容给用户，提示给用户操作菜单
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 * @return				展示操作菜单提示
	 */
	public static String showOperateMenu2(String fromUserName,String toUserName) {
		TextResponseMessage textResMsg = new TextResponseMessage();
		textResMsg.setFromUserName(fromUserName);
		textResMsg.setToUserName(toUserName);
		String 	  content = "["+ OperateCode.SHOW_MENU + "]:显示操作提示" + "\n";
		content = content + "["+ OperateCode.SHOW_HOME + "]:进入聚划算首页" + "\n";
		content = content + "["+ OperateCode.SEARCH_MP_JU + "]:聚名品查询" + " 例:"+ OperateCode.SEARCH_MP_JU +"3" + "\n";
		content = content + "["+ OperateCode.SEARCH_HOME_JU + "]:聚家装查询" + " 例:"+ OperateCode.SEARCH_HOME_JU +"3" + "\n";
		content = content + "[发微信地图]:" + "美食查询" + "\n";
		
		content = content + "\n";
		
		content = content + "[分类]:"+ "今日团商品查询" + "\n";
		content = content + "服饰 配饰 美妆 鞋包 运动 母婴 食品 电器 数码 家居 百货 更多" + "   例:服饰3或fs3" + "\n";
		
		content = content + "\n";
		
		content = content + "[城市+分类]:"+ "本地团查询" + "\n";
		content = content + "美食 休闲 电影 生活服务 丽人 卡券 摄影 甜点 KTV酒吧 "
		                  + "培训 旅游 酒店 粮油生鲜 汽车服务 通讯 房产汽车" + "\n";
		content = content + "例：杭州酒店3 或 杭州dy3" + "\n";
		
		content = content + "\n";
		
		content = content + "注 例中:" + "\n";
		content = content + "fs和dy为分类拼音首字母" + "\n";
		content = content + "3为页码,不指定就为第1页" + "\n";
		
		textResMsg.setContent(content);
		return textResMsg.getReponseMsg();
	}
	
	/**
	 * 获取默认的响应内容给用户，提示给用户操作菜单
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 * @return				展示操作菜单提示
	 */
	public static String showOperateMenu(String fromUserName,String toUserName) {
		TextResponseMessage textResMsg = new TextResponseMessage();
		textResMsg.setFromUserName(fromUserName);
		textResMsg.setToUserName(toUserName);
		String 	  content = "输入[ ]中的内容，即可获得小聚的贴身便捷服务噢 ~" + "\n";
		content = content + "\n";
		
		content = content + "[分类]—最新聚划算商品" + "\n";
		content = content + "服饰 配饰 美妆 鞋包 运动 母婴 食品 电器 数码 家居 百货 更多" + "\n";
		content = content + "例:服饰3 或 fs（数字3为页码，fs为分类拼音首字母）"+ "\n";
		content = content + "\n";
		
		content = content + "[位置]—同城美食搜索" + "\n";
		content = content + "按+号键后点击位置后发送" + "\n";
		content = content + "\n";
		
		content = content + "[城市+分类]—本地团购查询" + "\n";
		content = content + "美食 休闲 电影 生活服务 丽人 卡券 摄影 甜点 KTV酒吧 "
						  +"培训 旅游 酒店 粮油生鲜 汽车服务 通讯 房产汽车" + "\n";
		content = content + "例：杭州酒店 或 杭州dy3"+ "\n";
		content = content + "\n";
		
		content = content + "["+ OperateCode.SEARCH_MP_JU + "]—聚名品查询" + " 例:"+ OperateCode.SEARCH_MP_JU +"3" + "\n";
		content = content + "["+ OperateCode.SEARCH_HOME_JU + "]—聚家装查询" + " 例:"+ OperateCode.SEARCH_HOME_JU +"3" + "\n";
		content = content + "["+ OperateCode.SHOW_HOME + "]—进入聚划算首页" + "\n";
		content = content + "["+ OperateCode.SHOW_MENU + "]—显示操作提示" + "\n";
		
		
		textResMsg.setContent(content);
		return textResMsg.getReponseMsg();
	}
	
	/**
	 * 出现异常情况时，系统默认提示
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 * @return				展示操作菜单提示
	 */
	public static String showSystemInfo(String fromUserName,String toUserName) {
		TextResponseMessage textResMsg = new TextResponseMessage();
		textResMsg.setFuncFlag(CommonConstants.FUNC_FLAG_TRUE);
		textResMsg.setFromUserName(fromUserName);
		textResMsg.setToUserName(toUserName);
		String 	  content = FaceValue.SLEEP + "系统升级维护中，请稍后再试，" + "\n";
		content = content + "请您继续关注聚划算！" + "\n";
		textResMsg.setContent(content);
		return textResMsg.getReponseMsg();
	}
	
	/**
	 * 无法识别用户输入的关键词时，个性化地提示用户信息
	 * @param fromUserName	发送方帐号
	 * @param toUserName	开发者微信号
	 * @param keyWord	    用户输入的内容
	 * @return				个性化地提示用户信息
	 */
	public static String showCustomInfo(String fromUserName,String toUserName,String keyWord) {
		TextResponseMessage textResMsg = new TextResponseMessage();
		textResMsg.setFuncFlag(CommonConstants.FUNC_FLAG_TRUE);
		textResMsg.setFromUserName(fromUserName);
		textResMsg.setToUserName(toUserName);
		String content = FaceValue.SMILE + "目前小聚还暂时还不提供关于‘" + keyWord + "’的资讯信息，" + "\n";
		content = content + "您可以尝试如下关键词:" + "\n";
		content = content + JuQueryUtils.getRandomTodayCatNames() + ";" + "\n";;
		content = content + "城市+(" + JuQueryUtils.getRandomLocalCatNames() + ")" + "\n";
		content = content + "查看更多提示信息请输入"+  OperateCode.SHOW_MENU;
		textResMsg.setContent(content);
		return textResMsg.getReponseMsg();
	}
	
	/**
	 * 查询不到团购商品时的提醒
	 * @param fromUserName
	 * @param toUserName
	 * @return				返回给微信平台的提示用户的信息
	 */
	public static String showSearchEmptyInfo(String fromUserName,String toUserName,String content) {
		TextResponseMessage textResMsg = new TextResponseMessage();
		textResMsg.setFuncFlag(CommonConstants.FUNC_FLAG_TRUE);
		textResMsg.setFromUserName(fromUserName);
		textResMsg.setToUserName(toUserName);
		
		textResMsg.setContent(content);
		return textResMsg.getReponseMsg();
	}
	
	/**
	 * 获取今日团宝贝的信息：折扣、原价、折扣价
	 * 设置到微信多图文消息的标题中
	 * 
	 * @param juItem			聚划算商品
	 * @return					微信多图文消息的标题
	 */
	public static String getMsgItemTitle(JuItem juItem) {
		if(juItem == null){
			return "";
		}
		
		//宝贝名称
		String shortName = juItem.getShortName();
		String title = shortName + "\n";
		
		
		
		//宝贝价格
		DecimalFormat decimalFormat=new DecimalFormat("0.00");
		String originalPriceStr = decimalFormat.format(juItem.getOriginalPrice()/100.00);
		String realActicityPriceStr = decimalFormat.format(juItem.getRealActicityPrice()/100.00);
		title =  title + "¥" + realActicityPriceStr +"("+ "¥" +originalPriceStr + ")";
		
		//宝贝折扣
		title = title +" "+ juItem.getDiscount() + "折";
				
		//宝贝已售数量
		title =  title +  " 已售" +juItem.getSoldCount();
		
		return title;
	}
}
