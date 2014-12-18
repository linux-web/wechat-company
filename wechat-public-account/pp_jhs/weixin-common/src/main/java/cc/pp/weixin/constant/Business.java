package cc.pp.weixin.constant;

/**
 * 微信公众平台业务中用到的常量
 * @author wgybzb
 * @since  2013-04-06
 */
public class Business {
	/**
	 * 业务开关标记，1：开；0：关闭；
	 */
	public static String  OPEN_SWITCH = "1";
	public static String  CLOSE_SWITCH = "0";

	/**
	 * 是否向微信公众平台注册开发者账号
	 */
	public static boolean  REGISTER_DEVELOPER_SWITCH = Boolean.FALSE;

	/**
	 * 是否开启请求校验，防止无效的调用
	 */
	public static boolean  REQUEST_VERIFY_SWITCH = Boolean.TRUE;

	/**
	 * 是否开启本地测试，用模拟数据进行调试
	 */
	public static boolean  OPEN_MOCKUP_SWITCH = Boolean.FALSE;

	/**
	 * 是否开启输出提醒日志
	 */
	public static boolean  LOG_INFO_SWITCH = Boolean.TRUE;

	/**
	 * 聚划算在T2平台中的UID
	 */
	public static int JU_UID = CustomConstant.JU_UID;

	/**
	 * 手动指定的自定义回复接口域名（测试环境用）
	 */
	public static String REPLYSERVICE_HOST = "";
}
