package cc.pp.weixin.biz.jhs.domain;

import java.io.Serializable;
import java.util.List;

/**
 * 今日团聚划算宝贝信息，
 * 用户在微信客户端展示给用户
 * @author wgybzb
 * @since  2013-04-09
 *
 */
public class TodayJuItem implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 当前时间
	 */
	private long currentTime;
	public long getCurrentTime() {
		return currentTime;
	}
	public void setCurrentTime(long currentTime) {
		this.currentTime = currentTime;
	}

	/**
	 * 查询到的今日团商品的总页数
	 */
	private int totalPage;
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	/**
	 * 查询到的今日团商品列表
	 */
	private List<JuItem> juItemList;
	public List<JuItem> getJuItemList() {
		return juItemList;
	}
	public void setJuItemList(List<JuItem> juItemList) {
		this.juItemList = juItemList;
	}
}
