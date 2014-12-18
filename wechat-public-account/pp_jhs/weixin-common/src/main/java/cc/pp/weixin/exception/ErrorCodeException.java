package cc.pp.weixin.exception;

/**
 * 错误码异常
 * @author wgybzb
 * @since  2013-04-26
 */
public class ErrorCodeException extends RuntimeException {

	private static final long serialVersionUID = -8973083548303783086L;

	private final String errorCode;

	public ErrorCodeException(String errorCode) {
		this.errorCode = errorCode;
	}

	public ErrorCodeException(String errorCode, Throwable cause) {
		super(cause);
		this.errorCode = errorCode;
	}

	public String getErrorCode() {
		return errorCode;
	}

}
