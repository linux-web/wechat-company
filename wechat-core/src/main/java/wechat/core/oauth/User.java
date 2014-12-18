package wechat.core.oauth;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import wechat.core.domain.UserInfo;
import wechat.core.utils.HttpKit;

import com.alibaba.fastjson.JSONObject;

/**
 * 用户操作API
 * 
 * @author wanggang
 *
 */
public class User {

	private static final String USER_INFO_URI = "https://api.weixin.qq.com/cgi-bin/user/info";
	private static final String USER_GET_URI = "https://api.weixin.qq.com/cgi-bin/user/get";

	/**
	 * 拉取用户信息
	 * @param accessToken
	 * @param openid
	 * @return
	 * @throws IOException 
	 * @throws NoSuchProviderException 
	 * @throws NoSuchAlgorithmException 
	 * @throws KeyManagementException 
	 */
	public UserInfo getUserInfo(String accessToken, String openid) throws Exception {
		Map<String, String> params = new HashMap<String, String>();
		params.put("access_token", accessToken);
		params.put("openid", openid);
		String jsonStr = HttpKit.get(USER_INFO_URI, params);
		if (StringUtils.isNotEmpty(jsonStr)) {
			JSONObject obj = JSONObject.parseObject(jsonStr);
			if (obj.get("errcode") != null) {
				throw new Exception(obj.getString("errmsg"));
			}
			UserInfo user = JSONObject.toJavaObject(obj, UserInfo.class);
			return user;
		}
		return null;
	}

	/**
	 * 获取帐号的关注者列表
	 * @param accessToken
	 * @param next_openid
	 * @return
	 */
	public JSONObject getFollwersList(String accessToken, String next_openid) throws Exception {
		Map<String, String> params = new HashMap<String, String>();
		params.put("access_token", accessToken);
		params.put("next_openid", next_openid);
		String jsonStr = HttpKit.get(USER_GET_URI, params);
		if (StringUtils.isNotEmpty(jsonStr)) {
			JSONObject obj = JSONObject.parseObject(jsonStr);
			if (obj.get("errcode") != null) {
				throw new Exception(obj.getString("errmsg"));
			}
			return obj;
		}
		return null;
	}

}