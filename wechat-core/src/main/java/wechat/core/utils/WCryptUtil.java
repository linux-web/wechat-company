package wechat.core.utils;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.StringUtils;

/**
 * 提供接收和推送给公众平台消息的加解密接口(UTF8编码的字符串).
 * <ol>
 * 	<li>第三方回复加密消息给公众平台</li>
 * 	<li>第三方收到公众平台发送的消息，验证消息的安全性，并对消息进行解密。</li>
 * </ol>
 * 说明：异常java.security.InvalidKeyException:illegal Key Size的解决方案
 * <ol>
 * 	<li>在官方网站下载JCE无限制权限策略文件（JDK7的下载地址：
 *	  http://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html</li>
 * 	<li>下载后解压，可以看到local_policy.jar和US_export_policy.jar以及readme.txt</li>
 * 	<li>如果安装了JRE，将两个jar文件放到%JRE_HOME%\lib\security目录下覆盖原来的文件</li>
 * 	<li>如果安装了JDK，将两个jar文件放到%JDK_HOME%\jre\lib\security目录下覆盖原来文件</li>
 * </ol>
 */
public class WCryptUtil {

	// 字符集
	private static final Charset CHARSET = Charset.forName("UTF-8");
	// 随机数因子
	private static final String RANDOM_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

	protected byte[] aesKey;
	protected String token;
	protected String appidOrCorpid;

	/**
	 * 构造函数
	 *
	 * @param token		   公众平台上，开发者设置的token
	 * @param encodingAesKey  公众平台上，开发者设置的EncodingAESKey
	 * @param appidOrCorpid   公众平台appid/corpid
	 */
	public WCryptUtil(String token, String encodingAesKey, String appidOrCorpid) {
		this.token = token;
		this.appidOrCorpid = appidOrCorpid;
		this.aesKey = Base64.decodeBase64(encodingAesKey + "=");
	}

	/**
	 * 将公众平台回复用户的消息加密打包.
	 * <ol>
	 * <li>对要发送的消息进行AES-CBC加密</li>
	 * <li>生成安全签名</li>
	 * <li>将消息密文和安全签名打包成xml格式</li>
	 * </ol>
	 * @param plainText 公众平台待回复用户的消息，xml格式的字符串
	 * @return 加密后的可以直接回复用户的密文，包括msg_signature, timestamp, nonce, encrypt的xml格式的字符串
	 */
	public String encrypt(String plainText) {
		String randomStr = RandomStringUtils.random(16, RANDOM_CHARS);
		// 加密
		String encryptedXml = encrypt(randomStr, plainText);
		// 参数
		String timeStamp = Long.toString(System.currentTimeMillis() / 1000);
		String nonce = RandomStringUtils.random(16, RANDOM_CHARS);
		// 生成安全签名
		String signature = genSHA1(token, timeStamp, nonce, encryptedXml);
		String result = generateXml(encryptedXml, signature, timeStamp, nonce);
		return result;
	}

	/**
	 * 对明文进行加密.
	 * @param plainText 需要加密的明文
	 * @return 加密后base64编码的字符串
	 */
	private String encrypt(String randomStr, String plainText) {
		ByteGroup byteCollector = new ByteGroup();
		byte[] randomStringBytes = randomStr.getBytes(CHARSET);
		byte[] plainTextBytes = plainText.getBytes(CHARSET);
		byte[] bytesOfSizeInNetworkOrder = number2BytesInNetworkOrder(plainTextBytes.length);
		byte[] appIdBytes = appidOrCorpid.getBytes(CHARSET);

		// randomStr + networkBytesOrder + text + appid
		byteCollector.addBytes(randomStringBytes);
		byteCollector.addBytes(bytesOfSizeInNetworkOrder);
		byteCollector.addBytes(plainTextBytes);
		byteCollector.addBytes(appIdBytes);

		// ... + pad: 使用自定义的填充方式对明文进行补位填充
		byte[] padBytes = PKCS7Encoder.encode(byteCollector.size());
		byteCollector.addBytes(padBytes);

		// 获得最终的字节流, 未加密
		byte[] unencrypted = byteCollector.toBytes();

		try {
			// 设置加密模式为AES的CBC模式
			Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
			SecretKeySpec keySpec = new SecretKeySpec(aesKey, "AES");
			IvParameterSpec iv = new IvParameterSpec(aesKey, 0, 16);
			cipher.init(Cipher.ENCRYPT_MODE, keySpec, iv);

			// 加密
			byte[] encrypted = cipher.doFinal(unencrypted);

			// 使用BASE64对加密后的字符串进行编码
			String base64Encrypted = Base64.encodeBase64String(encrypted);

			return base64Encrypted;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 用SHA1算法生成安全签名
	 * @param token 票据
	 * @param timestamp 时间戳
	 * @param nonce 随机字符串
	 * @param encrypt 密文
	 * @return 安全签名
	 * @throws AesException 
	 */
	private static String genSHA1(String token, String timestamp, String nonce, String encrypt) {
		String[] array = new String[] { token, timestamp, nonce, encrypt };
		// 字符串排序
		Arrays.sort(array);
		String str = StringUtils.join(array, "");
		return DigestUtils.sha1Hex(str);
	}

	/**
	 * 将一个数字转换成生成4个字节的网络字节序bytes数组
	 * @param number
	 */
	private byte[] number2BytesInNetworkOrder(int number) {
		byte[] orderBytes = new byte[4];
		orderBytes[3] = (byte) (number & 0xFF);
		orderBytes[2] = (byte) (number >> 8 & 0xFF);
		orderBytes[1] = (byte) (number >> 16 & 0xFF);
		orderBytes[0] = (byte) (number >> 24 & 0xFF);
		return orderBytes;
	}

	/**
	 * 对密文进行解密.
	 *
	 * @param cipherText
	 *			需要解密的密文
	 * @return 解密得到的明文
	 */
	public String decrypt(String cipherText) {
		// 使用BASE64对密文进行解码
		byte[] encrypted = Base64.decodeBase64(cipherText);
		byte[] original;
		try {
			// 设置解密模式为AES的CBC模式
			Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
			SecretKeySpec key_spec = new SecretKeySpec(aesKey, "AES");
			IvParameterSpec iv = new IvParameterSpec(Arrays.copyOfRange(aesKey, 0, 16));
			cipher.init(Cipher.DECRYPT_MODE, key_spec, iv);

			// 解密
			original = cipher.doFinal(encrypted);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

		String xmlContent, from_appid;
		try {
			// 去除补位字符
			byte[] bytes = PKCS7Encoder.decode(original);

			// 分离16位随机字符串,网络字节序和AppId
			byte[] networkOrder = Arrays.copyOfRange(bytes, 16, 20);

			int xmlLength = bytesNetworkOrder2Number(networkOrder);

			xmlContent = new String(Arrays.copyOfRange(bytes, 20, 20 + xmlLength), CHARSET);
			from_appid = new String(Arrays.copyOfRange(bytes, 20 + xmlLength, bytes.length), CHARSET);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

		// appid不相同的情况
		if (!from_appid.equals(appidOrCorpid)) {
			throw new RuntimeException("AppID不正确");
		}

		return xmlContent;

	}

	/**
	 * 4个字节的网络字节序bytes数组还原成一个数字
	 * @param bytesInNetworkOrder
	 */
	private int bytesNetworkOrder2Number(byte[] bytesInNetworkOrder) {
		int sourceNumber = 0;
		for (int i = 0; i < 4; i++) {
			sourceNumber <<= 8;
			sourceNumber |= bytesInNetworkOrder[i] & 0xff;
		}
		return sourceNumber;
	}

	/**
	 * 生成xml消息
	 * @param encrypt   加密后的消息密文
	 * @param signature 安全签名
	 * @param timestamp 时间戳
	 * @param nonce	 随机字符串
	 * @return 生成的xml字符串
	 */
	private String generateXml(String encrypt, String signature, String timestamp, String nonce) {
		String format = "<xml>\n" + "<Encrypt><![CDATA[%1$s]]></Encrypt>\n"
				+ "<MsgSignature><![CDATA[%2$s]]></MsgSignature>\n" + "<TimeStamp>%3$s</TimeStamp>\n"
				+ "<Nonce><![CDATA[%4$s]]></Nonce>\n" + "</xml>";
		return String.format(format, encrypt, signature, timestamp, nonce);
	}

	public class ByteGroup {
		ArrayList<Byte> byteContainer = new ArrayList<Byte>();

		public byte[] toBytes() {
			byte[] bytes = new byte[byteContainer.size()];
			for (int i = 0; i < byteContainer.size(); i++) {
				bytes[i] = byteContainer.get(i);
			}
			return bytes;
		}

		public ByteGroup addBytes(byte[] bytes) {
			for (byte b : bytes) {
				byteContainer.add(b);
			}
			return this;
		}

		public int size() {
			return byteContainer.size();
		}
	}

	/**
	 * 提供基于PKCS7算法的加解密接口.
	 */
	public static class PKCS7Encoder {
		static int BLOCK_SIZE = 32;

		/**
		 * 获得对明文进行补位填充的字节.
		 * 
		 * @param count 需要进行填充补位操作的明文字节个数
		 * @return 补齐用的字节数组
		 */
		static byte[] encode(int count) {
			// 计算需要填充的位数
			int amountToPad = BLOCK_SIZE - (count % BLOCK_SIZE);
			if (amountToPad == 0) {
				amountToPad = BLOCK_SIZE;
			}
			// 获得补位所用的字符
			char padChr = chr(amountToPad);
			String tmp = new String();
			for (int index = 0; index < amountToPad; index++) {
				tmp += padChr;
			}
			return tmp.getBytes(CHARSET);
		}

		/**
		 * 删除解密后明文的补位字符
		 * 
		 * @param decrypted 解密后的明文
		 * @return 删除补位字符后的明文
		 */
		static byte[] decode(byte[] decrypted) {
			int pad = decrypted[decrypted.length - 1];
			if (pad < 1 || pad > 32) {
				pad = 0;
			}
			return Arrays.copyOfRange(decrypted, 0, decrypted.length - pad);
		}

		/**
		 * 将数字转化成ASCII码对应的字符，用于对明文进行补码
		 * 
		 * @param a 需要转化的数字
		 * @return 转化得到的字符
		 */
		static char chr(int a) {
			byte target = (byte) (a & 0xFF);
			return (char) target;
		}
	}

	public static void main(String[] args) {
		String encodingAesKey = "sRbDWlcLW979xMOf5F5Fw8i9mqBT6JSqgCX0tVsZ0Ti";
		String token = "228228";
		String appId = "wxe68d3f598ab752a8";
		String replyMsg = "<xml><ToUserName><![CDATA[oia2TjjewbmiOUlr6X-1crbLOvLw]]></ToUserName><FromUserName><![CDATA[gh_7f083739789a]]></FromUserName><CreateTime>1407743423</CreateTime><MsgType><![CDATA[video]]></MsgType><Video><MediaId><![CDATA[eYJ1MbwPRJtOvIEabaxHs7TX2D-HV71s79GUxqdUkjm6Gs2Ed1KF3ulAOA9H1xG0]]></MediaId><Title><![CDATA[testCallBackReplyVideo]]></Title><Description><![CDATA[testCallBackReplyVideo]]></Description></Video></xml>";

		String cipherText = "9UctVTrAifQkpghfY91FzIZqGDQc1TZp0ZDy1Pduu5Tp7/7Y+WzDjeBVRz+tecHBex4I70oQw9P+BsWH7vmX2oC8o9vvBGgMaygnbfFUC8ChME14KpPTbBaMn6IgZIuoBiqfVxtcvKEnQbhOLy4NCkfAlGEwAMjv7WVj+zmY5tn39dtSTXExF9My10mBJ2MET/ds8ixUnzG9+XX/VODyvw77dTl+oJGkw0S+54Na6RUEiZzVOTR6rOf+WTRG8syrSxyQWUI/E59hf/9RyYxsRbtM9w8tfvFUlUQcAwTGOIIQeBQZDP4AF9PySkOXkR3sWfjBmi645YE6VskH/VBQz7s/7K+zasCW6CeUnwhmOGnmjuF2VV3erKW/JbFtcOlVe+r9MLh2xqTrBMRR2ljc+KI17kirq+7HCSYJ5Yto04o=";

		WCryptUtil wc = new WCryptUtil(token, encodingAesKey, appId);
		String mingwen = wc.encrypt(replyMsg);

		System.out.println("加密后: \n");
		System.out.println(mingwen);
		System.out.println("解密：\n");
		System.out.println(wc.decrypt(cipherText));
	}

}
