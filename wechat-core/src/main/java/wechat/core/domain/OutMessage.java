package wechat.core.domain;

public class OutMessage {

	private String ToUserName;
	private String FromUserName;
	private Long CreateTime;
	private int FuncFlag = 0;

	public String getToUserName() {
		return ToUserName;
	}

	public String getFromUserName() {
		return FromUserName;
	}

	public Long getCreateTime() {
		return CreateTime;
	}

	public int getFuncFlag() {
		return FuncFlag;
	}

	public void setFuncFlag(int funcFlag) {
		FuncFlag = funcFlag;
	}

}