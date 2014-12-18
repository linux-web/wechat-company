package wechat.core.domain;

/**
 * 输出音乐消息
 * 
 * @author wanggang
 *
 */
public class MusicOutMessage extends OutMessage {

	private final String MsgType = "music";
	private String MusicUrl;
	private String HQMusicUrl;

	public String getMsgType() {
		return MsgType;
	}

	public String getMusicUrl() {
		return MusicUrl;
	}

	public void setMusicUrl(String musicUrl) {
		MusicUrl = musicUrl;
	}

	public String getHQMusicUrl() {
		return HQMusicUrl;
	}

	public void setHQMusicUrl(String hQMusicUrl) {
		HQMusicUrl = hQMusicUrl;
	}

}
