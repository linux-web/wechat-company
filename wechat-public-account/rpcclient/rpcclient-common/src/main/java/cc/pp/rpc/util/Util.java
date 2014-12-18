package cc.pp.rpc.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.Logger;

import pp.service.client.Service;

public abstract class Util {
	private static Logger logger = Logger.getLogger(Service.class);
	public static String now() {
		long longstamp = System.currentTimeMillis();
		return Long.toString(longstamp).substring(0, 10);
	}
	
	public static int intNow() {
		return Integer.parseInt(now());
	}
	
	public static String date(String format) {
		int timestamp = intNow();
		return date(format, timestamp);
	}
	
	public static String date(String format, int timestamp) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		long tt = (long)timestamp * 1000;
		Date d = new Date(tt);
		return dateFormat.format(d);
	}
	
	public static String date(String format, long timestamp) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		Date d = new Date(timestamp);
		return dateFormat.format(d);
	}
	
	public static String md5(String plainText) {
        try {  
            MessageDigest md = MessageDigest.getInstance("MD5");  
            md.update(plainText.getBytes());  
            byte b[] = md.digest();  
 
            int i;  
 
            StringBuffer buf = new StringBuffer("");  
            for (int offset = 0; offset < b.length; offset++) {  
                i = b[offset];  
                if (i < 0)  
                    i += 256;  
                if (i < 16)  
                    buf.append("0");  
                buf.append(Integer.toHexString(i));  
            }  
            //32位加密  
            return buf.toString();  
            // 16位的加密  
            //return buf.toString().substring(8, 24);  
        } catch (NoSuchAlgorithmException e) {  
            logger.error("when md5 NoSuchAlgorithmException", e);
            return null;  
        }  
 
    }
	
}
