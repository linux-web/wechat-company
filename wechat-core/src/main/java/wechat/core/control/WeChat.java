package wechat.core.control;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.math.NumberUtils;

import wechat.core.domain.Articles;
import wechat.core.domain.Attachment;
import wechat.core.domain.InMessage;
import wechat.core.domain.OutMessage;
import wechat.core.msghandler.MessageProcessingHandler;
import wechat.core.oauth.Group;
import wechat.core.oauth.Menu;
import wechat.core.oauth.Message;
import wechat.core.oauth.Qrcod;
import wechat.core.oauth.User;
import wechat.core.utils.ConfKit;
import wechat.core.utils.HttpKit;
import wechat.core.utils.Tools;
import wechat.core.utils.XStreamFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.thoughtworks.xstream.XStream;

/**
 * 微信常用的API
 * 
 * @author wanggang
 *
 */
public class WeChat {

	private static final String ACCESSTOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential";
	private static final String PAYFEEDBACK_URL = "https://api.weixin.qq.com/payfeedback/update";
	private static final String DEFAULT_HANDLER = "wechat.core.msghandler.DefaultMessageProcessingHandlerImpl";
	private static final String GET_MEDIA_URL = "http://file.api.weixin.qq.com/cgi-bin/media/get?access_token=";
	private static final String UPLOAD_MEDIA_URL = "http://file.api.weixin.qq.com/cgi-bin/media/upload?access_token=";

	private static Class<?> messageProcessingHandlerClazz = null;

	/**
	 * 消息操作接口
	 */
	public static final Message message = new Message();

	/**
	 * 菜单操作接口
	 */
	public static final Menu menu = new Menu();

	/**
	 * 用户操作接口
	 */
	public static final User user = new User();

	/**
	 * 分组操作接口
	 */
	public static final Group group = new Group();

	/**
	 * 分组操作接口
	 */
	public static final Qrcod qrcod = new Qrcod();

	/**
	 * 获取access_token
	 * @return
	 * @throws Exception
	 */
	public static String getAccessToken() throws Exception {
		String appid = ConfKit.get("AppId");
		String secret = ConfKit.get("AppSecret");
		String jsonStr = HttpKit.get(ACCESSTOKEN_URL.concat("&appid=") + appid + "&secret=" + secret);
		Map<String, Object> map = JSONObject.parseObject(jsonStr);
		return map.get("access_token").toString();
	}

	/**
	 * 获取access_token
	 * @return
	 * @throws Exception
	 */
	public static String getAccessToken(String appid, String secret) throws Exception {
		String jsonStr = HttpKit.get(ACCESSTOKEN_URL.concat("&appid=") + appid + "&secret=" + secret);
		Map<String, Object> map = JSONObject.parseObject(jsonStr);
		return map.get("access_token").toString();
	}

	/**
	 * 支付反馈
	 * @param openid
	 * @param feedbackid
	 * @return
	 * @throws Exception
	 */
	public static boolean payfeedback(String openid, String feedbackid) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		String accessToken = getAccessToken();
		map.put("access_token", accessToken);
		map.put("openid", openid);
		map.put("feedbackid", feedbackid);
		String jsonStr = HttpKit.get(PAYFEEDBACK_URL, map);
		Map<String, Object> jsonMap = JSONObject.parseObject(jsonStr);
		return "0".equals(jsonMap.get("errcode").toString());
	}

	/**
	 * 签名检查
	 * @param token
	 * @param signature
	 * @param timestamp
	 * @param nonce
	 * @return
	 */
	public static Boolean checkSignature(String token, String signature, String timestamp, String nonce) {
		return Tools.checkSignature(token, signature, timestamp, nonce);
	}

	/**
	 * 根据接收到用户消息进行处理
	 * @param responseInputString   微信发送过来的xml消息体
	 * @return
	 */
	public static String processing(String responseInputString) {
		InMessage inMessage = parsingInMessage(responseInputString);
		OutMessage oms = null;
		// 加载处理器
		if (messageProcessingHandlerClazz == null) {
			// 获取自定消息处理器，如果自定义处理器则使用默认处理器。
			String handler = ConfKit.get("MessageProcessingHandlerImpl");
			handler = handler == null ? DEFAULT_HANDLER : handler;
			try {
				messageProcessingHandlerClazz = Thread.currentThread().getContextClassLoader().loadClass(handler);
			} catch (Exception e) {
				throw new RuntimeException("messageProcessingHandler Load Error！");
			}
		}
		String xml = "";
		try {
			MessageProcessingHandler messageProcessingHandler = (MessageProcessingHandler) messageProcessingHandlerClazz
					.newInstance();
			//取得消息类型
			String type = inMessage.getMsgType();
			Method getOutMessage = messageProcessingHandler.getClass().getMethod("getOutMessage");
			Method alMt = messageProcessingHandler.getClass().getMethod("allType", InMessage.class);
			Method mt = messageProcessingHandler.getClass().getMethod(type + "TypeMsg", InMessage.class);

			alMt.invoke(messageProcessingHandler, inMessage);

			if (mt != null) {
				mt.invoke(messageProcessingHandler, inMessage);
			}

			Object obj = getOutMessage.invoke(messageProcessingHandler);
			if (obj != null) {
				oms = (OutMessage) obj;
			}
			//调用事后处理
			try {
				Method aftMt = messageProcessingHandler.getClass().getMethod("afterProcess", InMessage.class,
						OutMessage.class);
				aftMt.invoke(messageProcessingHandler, inMessage, oms);
			} catch (Exception e) {
			}

			obj = getOutMessage.invoke(messageProcessingHandler);
			if (obj != null) {
				oms = (OutMessage) obj;
				setMsgInfo(oms, inMessage);
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		if (oms != null) {
			// 把发送发送对象转换为xml输出
			XStream xs = XStreamFactory.init(true);
			xs.alias("xml", oms.getClass());
			xs.alias("item", Articles.class);
			xml = xs.toXML(oms);
		}
		return xml;
	}

	/**
	 * 设置发送消息体
	 * @param oms
	 * @param msg
	 * @throws Exception
	 */
	private static void setMsgInfo(OutMessage oms, InMessage msg) throws Exception {
		if (oms != null) {
			Class<?> outMsg = oms.getClass().getSuperclass();
			Field CreateTime = outMsg.getDeclaredField("CreateTime");
			Field ToUserName = outMsg.getDeclaredField("ToUserName");
			Field FromUserName = outMsg.getDeclaredField("FromUserName");

			ToUserName.setAccessible(true);
			CreateTime.setAccessible(true);
			FromUserName.setAccessible(true);

			CreateTime.set(oms, new Date().getTime());
			ToUserName.set(oms, msg.getFromUserName());
			FromUserName.set(oms, msg.getToUserName());
		}
	}

	/**
	 *消息体转换
	 * @param responseInputString
	 * @return
	 */
	private static InMessage parsingInMessage(String responseInputString) {
		//转换微信post过来的xml内容
		XStream xs = XStreamFactory.init(false);
		xs.ignoreUnknownElements();
		xs.alias("xml", InMessage.class);
		InMessage msg = (InMessage) xs.fromXML(responseInputString);
		return msg;
	}

	/**
	 * 获取媒体资源
	 * @param accessToken
	 * @param mediaId
	 * @return
	 * @throws IOException
	 * @throws InterruptedException 
	 * @throws ExecutionException 
	 */
	public static Attachment getMedia(String accessToken, String mediaId) throws IOException, ExecutionException,
			InterruptedException {
		String url = GET_MEDIA_URL + accessToken + "&media_id=" + mediaId;
		return HttpKit.download(url);
	}

	/**
	 * 上传素材文件
	 * @param type
	 * @param file
	 * @return
	 * @throws KeyManagementException
	 * @throws NoSuchAlgorithmException
	 * @throws NoSuchProviderException
	 * @throws IOException
	 * @throws InterruptedException 
	 * @throws ExecutionException 
	 */
	@SuppressWarnings("unchecked")
	public static Map<String, Object> uploadMedia(String accessToken, String type, File file)
			throws KeyManagementException, NoSuchAlgorithmException, NoSuchProviderException, IOException,
			ExecutionException, InterruptedException {
		String url = UPLOAD_MEDIA_URL + accessToken + "&type=" + type;
		String jsonStr = HttpKit.upload(url, file);
		return JSON.parseObject(jsonStr, Map.class);
	}

	/**
	 * 判断是否来自微信, 5.0 之后的支持微信支付
	 * @param request
	 * @return
	 */
	public static boolean isWeiXin(HttpServletRequest request) {
		String userAgent = request.getHeader("User-Agent");
		if (StringUtils.isNotBlank(userAgent)) {
			Pattern p = Pattern.compile("MicroMessenger/(\\d+).+");
			Matcher m = p.matcher(userAgent);
			String version = null;
			if (m.find()) {
				version = m.group(1);
			}
			return (null != version && NumberUtils.toInt(version) >= 5);
		}
		return false;
	}

}
