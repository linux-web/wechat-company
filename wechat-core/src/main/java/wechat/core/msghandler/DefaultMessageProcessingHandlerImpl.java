package wechat.core.msghandler;

import wechat.core.domain.InMessage;
import wechat.core.domain.OutMessage;
import wechat.core.domain.TextOutMessage;

/**
 * 默认的消息处理器实现类
 * 
 * @author wanggang
 *
 */
public class DefaultMessageProcessingHandlerImpl implements MessageProcessingHandler {

	private OutMessage outMessage;

	@Override
	public void allType(InMessage msg) {
		TextOutMessage out = new TextOutMessage();
		out.setContent("Your message has been received!");
		setOutMessage(out);
	}

	@Override
	public void textTypeMsg(InMessage msg) {
	}

	@Override
	public void locationTypeMsg(InMessage msg) {
	}

	@Override
	public void imageTypeMsg(InMessage msg) {
	}

	@Override
	public void videoTypeMsg(InMessage msg) {
	}

	@Override
	public void voiceTypeMsg(InMessage msg) {
	}

	@Override
	public void linkTypeMsg(InMessage msg) {
	}

	@Override
	public void verifyTypeMsg(InMessage msg) {
	}

	@Override
	public void eventTypeMsg(InMessage msg) {
	}

	@Override
	public void setOutMessage(OutMessage outMessage) {
		this.outMessage = outMessage;
	}

	@Override
	public void afterProcess(InMessage inMessage, OutMessage outMessage) {
	}

	@Override
	public OutMessage getOutMessage() {
		return outMessage;
	}

}
