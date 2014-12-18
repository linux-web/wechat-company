package cc.pp.weixin.domain.keyword;

import java.io.Serializable;

public class KeyWordInfo implements Serializable {
	private static final long serialVersionUID = 4341247688413116287L;
	
	/**
	 * 关键词
	 */
	private String keyWord;
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	
	/**
	 * 关键词权重
	 */
	private int weight;
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	
	/**
	 * 关键词类别
	 */
	private String type;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
