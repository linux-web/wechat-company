package cc.pp.weixin.utils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.log4j.Logger;

import cc.pp.weixin.constant.Constant;
import cc.pp.weixin.custom.replay.dao.ibatis.DefaultCustomReplyDAO;

public class CustomRelplyUtils {
	private static Logger log = Logger.getLogger(DefaultCustomReplyDAO.class);
	/**
	 * 从指定位置，获取运营设置的自定义回复
	 * 位置为：当前classpaht中的文件
	 */
    public static String readRelplyJson(){
    	InputStreamReader read = null;
    	StringBuilder relplyJsonSb = new StringBuilder();
        try {
	        File file=new File(Constant.CUSTOME_REPLAY_FILE_PATH);
	        if(file.isFile() && file.exists()){ //判断文件是否存在
	        	//考虑到编码格式
	            read = new InputStreamReader(new FileInputStream(file),Constant.CUSTOME_REPLAY_ENCODING);
	            BufferedReader bufferedReader = new BufferedReader(read);
	            String lineTxt = null;
	            while((lineTxt = bufferedReader.readLine()) != null){
	            	relplyJsonSb.append(lineTxt).append("\n");
	            }
	        }else{
	        	log.warn("When readRelplyJson" + Constant.CUSTOME_REPLAY_FILE_PATH + "does not exists");
	        }
        } catch (Exception e) {
        	log.error("When readRelplyJson Exception", e);
        } finally {
        	try {
				read.close();
			} catch (IOException e) {
				log.error("When readRelplyJson read.close IOException", e);
			}
        }
        return relplyJsonSb.toString();
    }
}