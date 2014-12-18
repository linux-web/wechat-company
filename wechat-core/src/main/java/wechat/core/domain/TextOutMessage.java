package wechat.core.domain;

/**
 * 文本消息
 * 
 * @author wanggang
 *
 */
public class TextOutMessage extends OutMessage {

	private final String MsgType = "text";

	// 文本消息
	private String Content;

	public TextOutMessage() {
		//
	}

	public TextOutMessage(String content) {
		Content = content;
	}

	public String getMsgType() {
		return MsgType;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

}
