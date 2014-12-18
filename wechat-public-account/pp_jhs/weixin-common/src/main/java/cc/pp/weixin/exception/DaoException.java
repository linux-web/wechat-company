package cc.pp.weixin.exception;

/**
 * 数据库层异常
 * @author wgybzb
 * @since  2013-04-26
 */
public class DaoException extends Exception {

	private static final long serialVersionUID = -9064871085724471782L;

	public DaoException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public DaoException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

}