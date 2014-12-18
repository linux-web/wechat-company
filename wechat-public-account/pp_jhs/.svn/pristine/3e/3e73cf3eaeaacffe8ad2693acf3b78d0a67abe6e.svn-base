package cc.pp.weixin.exception;

import cc.pp.weixin.result.ResultDO;


/**
 * 专门负责异常的辅助类
 * @author oujunfeng
 * @since  2013-04-26
 */
public class Exceptions {

	/**
	 * 抛出ErrorCode异常
	 * @param errorCode
	 */
	public static void throwErrorCodeException(String errorCode) {
		throw new ErrorCodeException(errorCode);
	}
	
	/**
	 * 抛出ErrorCode异常
	 * @param errorCode
	 * @param cause
	 */
	public static void throwErrorCodeException(String errorCode, Throwable cause) {
		throw new ErrorCodeException(errorCode, cause);
	}
	
	
	/**
	 * 注入错误码
	 * @param result
	 * @param e
	 */
	public static void injectErrorCode(ResultDO<?> result, ErrorCodeException e) {
		result.addError(e.getErrorCode());
	}
	
}