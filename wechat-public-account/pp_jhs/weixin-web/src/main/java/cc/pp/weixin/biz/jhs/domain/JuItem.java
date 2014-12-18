package cc.pp.weixin.biz.jhs.domain;

import java.io.Serializable;

import cc.pp.weixin.biz.jhs.constant.JuConstant;


/**
 * 聚划算宝贝的部分信息，
 * 用户在微信客户端展示给用户
 * @author wgybzb
 * @since  2013-04-09
 *
 */
public class JuItem implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 宝贝ID
	 */
	private long itemId;
	public long getItemId() {
		return itemId;
	}
	public void setItemId(long itemId) {
		this.itemId = itemId;
	}

	/**
	 * 宝贝链接
	 */
	private String itemUrl;
	public String getItemUrl() {
		itemUrl = JuConstant.WAP_JU_ITEM_URL_PREFIX + "i" + this.itemId+ ".htm" ;
		return itemUrl;
	}
	public void setItemUrl(String itemUrl) {
		this.itemUrl = itemUrl;
	}

	/**
	 * 标题
	 */
	private String shortName;
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	/**
	 * 图片链接
	 */
	private String picUrl;
	public String getPicUrl() {
		return "http://img01.taobaocdn.com/bao/uploaded/" + picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	/**
	 * 原价
	 */
	private double originalPrice;
	public double getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(double originalPrice) {
		this.originalPrice = originalPrice;
	}

	/**
	 * 参团价
	 */
	private double activityPrice;
	public double getActivityPrice() {
		return activityPrice;
	}
	public void setActivityPrice(double activityPrice) {
		this.activityPrice = activityPrice;
	}

	/**
	 * 实际参团价
	 */
	private double realActicityPrice;
	public double getRealActicityPrice() {
		return realActicityPrice;
	}
	public void setRealActicityPrice(double realActicityPrice) {
		this.realActicityPrice = realActicityPrice;
	}

	/**
	 * 折扣
	 */
	private double discount;
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}

	/**
	 * 城市
	 */
	private String city;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * 已经卖出量
	 */
	private int soldCount;
	public int getSoldCount() {
		return soldCount;
	}
	public void setSoldCount(int soldCount) {
		this.soldCount = soldCount;
	}
}
