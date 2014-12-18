package cc.pp.weixin.constant;

/**
 * 微信公众平台消息中含有的字段名称
 * @author wgybzb
 * @since  2013-04-06
 */
public interface MsgFieldName {
	/**
	 * 开发者微信号
	 */
	String TO_USER_NAME = "ToUserName";

	/**
	 * 发送方帐号（一个OpenID）
	 */
	String FROM_USER_NAME = "FromUserName";

	/**
	 * 消息创建时间
	 */
	String CREATE_TIME = "CreateTime";

	/**
	 * 消息类型
	 */
	String MSG_TYPE = "MsgType";

	/**
	 * 消息id
	 */
	String MSG_ID = "MsgId";

	/**
	 * 图片链接
	 */
	String PIC_URL = "PicUrl";

	/**
	 * 消息标题
	 */
	String Title = "Title";
	/**
	 * 消息描述
	 */
	String DESCRIPTION = "Description";
	/**
	 * 消息链接
	 */
	String URL = "Url";

	/**
	 * 地理位置纬度
	 */
	String LOCATION_X = "Location_X";
	/**
	 * 地理位置经度
	 */
	String LOCATION_Y = "Location_Y";
	/**
	 * 地图缩放大小
	 */
	String SCALE = "Scale";
	/**
	 * 地理位置信息
	 */
	String LABEL = "Label";

	/**
	 * 事件类型
	 */
	String EVENT = "Event";
	/**
	 * 事件KEY值
	 */
	String EVENT_KEY = "EventKey";

	/**
	 * 文本消息内容
	 */
	String CONTENT = "Content";

	/**
	 * 音频ID
	 */
	String MEDIA_ID = "MediaId";
	/**
	 * 音频格式
	 */
	String FORMAT = "Format";
}
