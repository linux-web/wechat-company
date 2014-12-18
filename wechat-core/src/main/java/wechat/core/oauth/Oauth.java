package wechat.core.oauth;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.HashMap;
import java.util.Map;

import wechat.core.utils.ConfKit;
import wechat.core.utils.HttpKit;

/**
 * 微信Oauth和支付工具类
 * 
 * @author wanggang
 *
 */
public class Oauth {

	private static final String CODE_URI = "http://open.weixin.qq.com/connect/oauth2/authorize";
	private static final String TOKEN_URI = "https://api.weixin.qq.com/sns/oauth2/access_token";
	private static final String REFRESH_TOKEN_URI = "https://api.weixin.qq.com/sns/oauth2/refresh_token";

	private String appid;
	private String secret;

	public Oauth() {
		super();
		this.appid = ConfKit.get("AppId");
		this.secret = ConfKit.get("AppSecret");
	}

	public Oauth(String appid, String secret) {
		super();
		this.appid = appid;
		this.secret = secret;
	}

	/**
	 * 请求code
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public String getCode() throws UnsupportedEncodingException {
		Map<String, String> params = new HashMap<String, String>();
		params.put("appid", getAppid());
		params.put("response_type", "code");
		params.put("redirect_uri", ConfKit.get("redirect_uri"));
		params.put("scope", "snsapi_base"); // snsapi_base（不弹出授权页面，只能拿到用户openid）snsapi_userinfo
		// （弹出授权页面，这个可以通过 openid 拿到昵称、性别、所在地）
		params.put("state", "wx#wechat_redirect");
		String para = Pay.createSign(params, false);
		return CODE_URI + "?" + para;
	}

	/**
	 * 通过code 换取 access_token
	 * @param code
	 * @return
	 * @throws IOException 
	 * @throws NoSuchProviderException 
	 * @throws NoSuchAlgorithmException 
	 * @throws KeyManagementException 
	 */
	public String getToken(String code) throws Exception {
		Map<String, String> params = new HashMap<String, String>();
		params.put("appid", getAppid());
		params.put("secret", getSecret());
		params.put("code", code);
		params.put("grant_type", "authorization_code");
		return HttpKit.get(TOKEN_URI, params);
	}

	/**
	 * 刷新 access_token
	 * @param refreshToken
	 * @return
	 * @throws IOException 
	 * @throws NoSuchProviderException 
	 * @throws NoSuchAlgorithmException 
	 * @throws KeyManagementException 
	 */
	public String getRefreshToken(String refreshToken) throws Exception {
		Map<String, String> params = new HashMap<String, String>();
		params.put("appid", getAppid());
		params.put("grant_type", "refresh_token");
		params.put("refresh_token", refreshToken);
		return HttpKit.get(REFRESH_TOKEN_URI, params);
	}

	public String getAppid() {
		return appid;
	}

	public void setAppid(String appid) {
		this.appid = appid;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

}
