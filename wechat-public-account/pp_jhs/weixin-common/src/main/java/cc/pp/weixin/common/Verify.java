package cc.pp.weixin.common;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

public class Verify {
	/**
	 * 日志输出
	 */
	private static Logger logger = Logger.getLogger(Verify.class);
	
	/**
	 * 判定请求是否来自于微信公众平台
	 * 判定依据：
	 * 公众平台用户提交信息后，微信服务器将发送GET请求到填写的URL上，并且带上四个参数： 
	 * signature 微信加密签名
	 * timestamp 时间戳 
	 * nonce	 随机数 
	 * echostr	 随机字符串
	 * 
	 * 加密/校验流程：
	 * 1. 将token、timestamp、nonce三个参数进行字典序排序
	 * 2. 将三个参数字符串拼接成一个字符串进行sha1加密
	 * 3. 开发者获得加密后的字符串可与signature对比，标识该请求来源于微信

	 * @param request	来自微信平台的请求
	 * 
	 * @return			true:请求来自于微信公众平台;false:请求不是来自于微信公众平台
	 */
	public static  boolean checkSignature(HttpServletRequest request,String token) {
		String signature = request.getParameter("signature");
		if (StringUtils.isEmpty(signature)){
			return Boolean.FALSE;
		}
		
        String timestamp = request.getParameter("timestamp");
        String nonce = request.getParameter("nonce");
        if (StringUtils.isEmpty(timestamp) || StringUtils.isEmpty(nonce)){
			return Boolean.FALSE;
		}
        
        ArrayList<String> list=new ArrayList<String>();		
		list.add(token);		
		list.add(timestamp);		
		list.add(nonce);	
		
		//参数进行字典序排序后值的拼接
		Collections.sort(list);		
		String tmpStr = list.get(0) + list.get(1) + list.get(2);
		
		//加密
		tmpStr = Verify.Encrypt(tmpStr);
		
		//校验
		if (signature.equals(tmpStr)) {
			return Boolean.TRUE;
		} else {
			return Boolean.FALSE;
		}
	}
	
	/**
	 * 将一个字符串进行sha1加密
	 * @param strSrc	原始字符串
	 * @return			进行sha1加密后的字符串
	 */
	public static  String Encrypt(String strSrc)  {                
		String strDes  = null;
		if (StringUtils.isEmpty(strSrc)){
			return strDes; 
		}
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			byte[] bt = strSrc.getBytes();
			md.update(bt);
			strDes = bytesToHex(md.digest());
		} catch (Exception e) {
			logger.error("When ParseRequestData Process Encrypt Error", e);
		}
		return strDes; 
	}       
    
	/**
	 * 把字节流转换为 十六进制字符串
	 * @param bts	字节流
	 * @return		十六进制字符串
	 */
	public static  String bytesToHex(byte[] bts) {         
		String des = "";         
		String tmp=""; 
		if (bts == null){
			return des;
		}
		for (int i=0;i<bts.length;i++) {                    
			tmp = (Integer.toHexString(bts[i] & 0xFF));                    
			if (tmp.length()==1) {                        
				des += "0";                    
			}                    
			des += tmp;                
		}                
		return des;       
	}
}
