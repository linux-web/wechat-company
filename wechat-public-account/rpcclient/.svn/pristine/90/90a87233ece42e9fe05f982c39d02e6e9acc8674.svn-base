package cc.pp.rpc.domain;

import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonNode;

import pp.service.client.Service;

public class Result {
	
	public static final int ERR_SYSTEM = 0;
	public static final int ERR_COMMON = 1;
	public static final int ERR_SERVICE = 2;
	
	private int errorCode;
	private int errorLevel;
	private String errorSvc;
	private String message;
	private JsonNode data = null;
	private String responseText = "";
	
	private static Logger logger = Logger.getLogger(Service.class);
	
	public Result(int errorCode, int errorLevel, String errorSvc, String msg, JsonNode data, String responseText) {
		this.errorCode = errorCode;
		this.errorLevel = errorLevel;
		this.errorSvc = errorSvc;
		this.message = msg;
		this.data = data;
		this.responseText = responseText;
		if (errorCode == 0) {
			logger.info("Initialize Result");
		} else {
			logger.warn("Initialize Result, ErrorCode: " + errorCode + ", ErrorLevel: " + errorLevel + ", ErrorService: " + errorSvc);
		}
	}
	
	/**
	 * 判断本次调用是否错误
	 * 
	 * @return
	 */
	public boolean isError() {
		return errorCode == 0 ? false : true;
	}
	
	/**
	 * 判断本次调用是否成功
	 * 
	 * @return
	 */
	public boolean isSuccess() {
		return errorCode == 0 ? true : false;
	}
	
	/**
	 * 获取响应错误码
	 * 
	 * @return
	 */
	public int getErrorCode() {
		return errorCode;
	}
	
	/**
	 * 获取响应错误服务标识
	 * 
	 * @return
	 */
	public String getErrorService() {
		return errorSvc;
	}
	
	/**
	 * 获取响应错误等级
	 * 
	 * 系统错误 0 - ClientData.ERR_SYSTEM;
	 * 通用错误 1 - ClientData.ERR_COMMON;
	 * 服务业务错误 2 - ClientData.ERR_SERVICE;
	 * 
	 * @return
	 */
	public int getErrorLevel() {
		return errorLevel;
	}
	
	/**
	 * 获取服务响应消息
	 * 
	 * @return
	 */
	public String getMessage() {
		return message;
	}
	
	/**
	 * 获取服务响应数据体 JsonNode
	 * 
	 * 数据由 Jackson 的 ObjectMapper 构建的 JsonNode
	 * 相关类包有：
	 *     org.codehaus.jackson.JsonNode
	 *     org.codehaus.jackson.map.ObjectMapper
	 * 
	 * @return
	 */
	public JsonNode getData() {
		return data;
	}
	
	/**
	 * 获取服务响应回的 JSON 文本
	 * 
	 * @return
	 */
	public String getResponseText() {
		return responseText;
	}
	
}
