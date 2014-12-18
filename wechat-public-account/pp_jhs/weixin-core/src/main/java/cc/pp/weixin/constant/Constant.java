package cc.pp.weixin.constant;

public interface Constant {
	/**
	 * 自定义回复本地存储文件路径及编码
	 */
	String CUSTOME_REPLAY_FILE_PATH = "/home/weixin/ju/data/CustomReplayJson.txt";
	String CUSTOME_REPLAY_ENCODING = "UTF-8";
	
	/**
	 * 调用分词服务的链接及参数编码
	 */
	String KEY_WORD_SERVER_URL = "http://60.169.74.147:3305/ExtractKeyWord/MyServlet";
	String KEY_WORD_SERVER_URL2 = "http://60.169.74.147:3305/JuHuaSuan/keyWords";
	String KEY_WORD_ENCODING = "UTF-8";
}
