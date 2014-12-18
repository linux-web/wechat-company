package wechat.app.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import wechat.core.control.WeChat;
import wechat.core.domain.WeChatBuyPost;
import wechat.core.oauth.Pay;
import wechat.core.utils.Tools;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 * 支付回调
 * 
 * @author wanggang
 *
 */
public class WeChatPayNotifyServlet extends HttpServlet {

	private static final long serialVersionUID = 6139862236335427037L;

	// 微信返回  fail 失败，success 成功
	private static final String STATUC_SUCCESS = "success";
	private static final String STATUC_FAIL = "fail";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// post 过来的xml
		WeChatBuyPost postData = null;
		String openid = null;
		String appsignature = null;
		try {
			ServletInputStream in = req.getInputStream();
			// 转换微信post过来的xml内容
			XStream xs = new XStream(new DomDriver());
			xs.alias("xml", WeChatBuyPost.class);
			String xmlMsg = Tools.inputStream2String(in);
			postData = (WeChatBuyPost) xs.fromXML(xmlMsg);

			System.out.println(postData.toString());
			// OpenId=oOGf-jjDL7Kv-xT6MBD1qoyKtzeU, AppId=wx136bc734aff403df, IsSubscribe=1, TimeStamp=1392628878, NonceStr=54ah1fs5UsTZrf8s, AppSignature=02b5d8f2ccd8ca42cf13c6e44b48513c13294093, SignMethod=sha1
			// 校验支付
			long timestamp = postData.getTimeStamp();
			String noncestr = postData.getNonceStr();
			openid = postData.getOpenId();
			int issubscribe = postData.getIsSubscribe();
			appsignature = postData.getAppSignature();
			boolean temp = Pay.verifySign(timestamp, noncestr, openid, issubscribe, appsignature);
			if (!temp) {
				System.out.println("校验支付error！");
				writeString(resp, STATUC_FAIL);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 微信post过来的参数
		@SuppressWarnings("unchecked")
		Map<String, String[]> parasMap = req.getParameterMap();
		// 构造新的参数
		Map<String, String> paraMap = new HashMap<String, String>();
		for (Entry<String, String[]> entry : parasMap.entrySet()) {
			String key = entry.getKey();
			String[] value = entry.getValue();
			System.out.println(key + ":\t" + value);
			if (null == value) {
				continue;
			} else {
				paraMap.put(key, value[0]);
			}
		}
		/*
		 paraMap:	{"transport_fee":["0"],"trade_mode":["1"],"trade_state":["0"],"sign_type":["MD5"],"input_charset":["UTF-8"],"fee_type":["1"],"out_trade_no":["7805803"],"transaction_id":["1217484201201402188208911673"],"discount":["0"],"bank_billno":["201402180770175"],"sign":["F06A82B69D7819785478E34A84BE5CA0"],"attach":["yongle"],"total_fee":["1"],"time_end":["20140218095638"],"partner":["1217484201"],"notify_id":["Kl8hcMyrMFtQLMvOl_hfnEOahccJRPEf-tFuN7ctFfxVxRPLeD0kqMf_AU7ADdMF1zsRaW4FZQ9K_kvMQFc62ScV_NvEhL-D"],"bank_type":["0"],"product_fee":["1"]}
		 */

		/*
		// 必填：否
		sign_type           签名类型， 取值： MD5、 RSA，
		service_version     版本号，默认为 1.0
		input_charset       字符编码,取值： GBK、 UTF-8，
		sign_key_index      多密钥支持的密钥序号， 默认 1
		pay_info            支付结果信息， 支付成功时为空
		bank_billno         银行订单号
		attach              商家数据包，原样返回
		transport_fee       物流费用，单位分，默认 0。如果有值，必须保证transport_fee + product_fee = total_fee
		product_fee         物品费用， 单位分。 如果有值，必 须 保 证 transport_fee + product_fee=total_fee
		discount            折扣价格， 单位分， 如果有值, 通知的 total_fee + discount =请求的 total_fee 买家别名
		buyer_alias         对应买家账号的一个加密串
		
		必填：是
		sign                签名
		trade_mode          1-即时到账
		trade_state         0—成功 其他保留支付结果信息
		partner             商户号，也即之前步骤的partnerid, 由微信统一分配的10 位正整数 (120XXXXXXX)
		bank_type           银行类型，在微信中使用 WX
		total_fee           总金额  支付金额，单位为分，如果discount 有值， 通知的 total_fee+ discount = 请求的 total_fee
		fee_type            现金支付币种,目前只支持人民币,默认值是 1-人民币
		notify_id           支付结果通知 id， 对于某些特定商户，只返回通知 id，要求商户据此查询交易结果
		transaction_id      交易号， 28位长的数值，其中前10位为商户号之后8位为订单产生的日期如20090415，最后10位是流水号。
		out_trade_no        商户系统的订单号， 与请求一致。
		time_end            支付完成时间，格式为yyyyMMddhhmmss ，时区为 GMT+8 beijing。
		 */
		String trade_state = req.getParameter("trade_state");
		String totalFee = req.getParameter("total_fee");
		String orderId = req.getParameter("out_trade_no");
		String transId = req.getParameter("transaction_id");
		@SuppressWarnings("unused")
		String timeEnd = req.getParameter("time_end");

		System.out.println("trade_state:\t" + trade_state + "totalFee:\t" + totalFee + "orderId:\t" + orderId);

		if (StringUtils.isEmpty(orderId)) {
			writeString(resp, STATUC_FAIL);
			return;
		}

		// 自己的业务逻辑 bg
		// ***************
		// 自己的业务逻辑 ed

		// 发送客服消息
		try {
			String accessToken = WeChat.getAccessToken();
			WeChat.message.sendText(accessToken, orderId, "您的订单号" + orderId + "已经支付成功！");
			//发货通知！推荐支付成功后就发送此通知...
			Pay.delivernotify(accessToken, openid, transId, transId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		writeString(resp, STATUC_SUCCESS);
	}

	/**
	 * 直接写字符串
	 * @param response
	 * @param msg
	 */
	private void writeString(HttpServletResponse response, String msg) {
		try {
			response.getWriter().write(msg);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
