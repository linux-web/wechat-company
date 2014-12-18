package cc.pp.weixin.biz.jhs.domain;

import org.apache.commons.httpclient.URIException;
import org.apache.commons.httpclient.util.URIUtil;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import cc.pp.weixin.biz.jhs.common.JuQueryUtils;
import cc.pp.weixin.biz.jhs.constant.JuConstant;
import cc.pp.weixin.biz.jhs.constant.OperateCode;
import cc.pp.weixin.util.PinyinUtils;


public class Query {
	private static Logger logger = Logger.getLogger(Query.class);
	/**
	 * 当前页数
	 * 默认从第一页开始，下标为1
	 */
	private String page;
	
	/**
	 * 每页商品数
	 * 默认值 96
	 * 所传参数超过默认值，则使用默认值96
	 */
	private String psize;
	
	/**
	 * 商品类型 0：普通商品 1：本地商品 -1：普通+本地商品
	 * 默认值 -1
	 */
	private String type;
	
	/**
	 * 前台类目ID
	 * 默认值 无
	 */
	private String frontCatId;
	
	
	/**
	 * 前台普通商品标签ID
	 * 默认值 无
	 */
	private String label;
	
	/**
	 * 商品的发布平台Id（即渠道ID）。如聚名品：1013
	 * 默认值 1001(聚划算平台)
	 */
	private String platformId;
	
	/**
	 * 当前城市。比如杭州。城市的参数需要以GBK进行编码
	 * 通过cookie查询最近访问城市或IP定位城市
	 */
	private String ck;
	
	/**
	 * 排序类型。
	 * default:按默认分值排序，
	 * soldCount:按销量排序,
	 * discount:按折扣排序,
	 * newest:按发布时间排序。
	 * 默认值 default
	 */
	private String stype;
	
	/**
	 * 顺序类型。up:升序，down:降序。
	 * 默认值 down
	 */
	private String reverse;

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getPsize() {
		return psize;
	}

	public void setPsize(String psize) {
		this.psize = psize;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFrontCatId() {
		return frontCatId;
	}

	public void setFrontCatId(String frontCatId) {
		this.frontCatId = frontCatId;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getPlatformId() {
		return platformId;
	}

	public void setPlatformId(String platformId) {
		this.platformId = platformId;
	}

	public String getCk() {
		return ck;
	}

	public void setCk(String ck) {
		this.ck = ck;
	}

	public String getStype() {
		return stype;
	}

	public void setStype(String stype) {
		this.stype = stype;
	}

	public String getReverse() {
		return reverse;
	}

	public void setReverse(String reverse) {
		this.reverse = reverse;
	}

	public Query() {
		//设置查询条件默认值
		this.page = "1";
		this.psize = "5";
		this.type = "0";
		this.platformId = "1001";
		this.stype = "default";
		this.reverse = "reverse";
	}
	
	/**
	 * 从用户的查询条件中，抽取出查询条件，
	 * 设置查询条件
	 * 
	 * @param condition			用户的查询条件
	 */
	public void initQuery(String condition){
		if (StringUtils.isEmpty(condition)){
			return;
		}
		/*搜索条件格式：操作码 + 商品分类 + 页码
		操作码 m【聚名品商品查询】；p【品牌团商品查询】；z【聚家装商品查询】；
		商品分类 + 页码：今日团或本地团商品查询，本地团要带城市,例如：杭州 服饰 3*/
		
		//获取前台类目名称
		FrontCat frontCat = JuQueryUtils.extractFrontCat(condition);
		String frontCatIdStr = "";
		//设置前台类目条件
		if (frontCat != null){
			frontCatIdStr = frontCat.getCatId();
			if (StringUtils.isEmpty(frontCatIdStr)){
				frontCatIdStr = "36000";//默认个值
			}
			this.setFrontCatId(frontCatIdStr);
			if (StringUtils.equals(condition, frontCat.getCatName())
				|| StringUtils.equals(condition, PinyinUtils.getInitials(frontCat.getCatName()))){//直接输入商品分类的情况
				return;
			}
		}
		
		String extractPage = JuQueryUtils.extractPage(condition);
		//设置页码
		if (StringUtils.isNotEmpty(extractPage)){
			this.setPage(extractPage);
		}
		
		//判定是否为本地团的分类
		boolean isLocalFrontCatId = JuQueryUtils.isLocalFrontCatId(frontCatId);
		
		//获取操作类型
		String extractOperateInfo = JuQueryUtils.extractOperateInfo(condition);
		extractOperateInfo = extractOperateInfo.toLowerCase();
		
		//是否包含地理位置查询的参数
		boolean isLocationSearch = false;
		if (StringUtils.contains(extractOperateInfo, OperateCode.LOCATION_SEARCH_JU)){
			isLocationSearch = true;
		}
		//设置操作类型
		if (isLocalFrontCatId || isLocationSearch){//本地团商品的情况
			this.setType("1");//默认值为 0：普通商品
			//当前城市
			String city = extractOperateInfo.replace(OperateCode.LOCATION_SEARCH_JU, "");//利用微信发送地理位置时用
			if (StringUtils.isNotEmpty(city)){
				String cityEncode = "";
				try {
					cityEncode = URIUtil.encodeAll(city, "GBK");
				} catch (URIException e) {
					logger.error("When initQuery error", e);
				}
				this.setCk(cityEncode);
			}
			//包含地理位置就查询美食
			if (isLocationSearch){
				this.setPsize("10");
				this.setFrontCatId("9000");
			}
			
		}else if (extractOperateInfo.startsWith(OperateCode.SEARCH_MP_JU)){//聚名品商品查询
			//商品的发布平台:聚名品
			this.setPlatformId("1013");
		}else if (extractOperateInfo.startsWith(OperateCode.SEARCH_BRAND_JU)){//品牌团商品查询
			this.setLabel("meideshenghuodianqi");
		}else if (extractOperateInfo.startsWith(OperateCode.SEARCH_HOME_JU)){//聚家装商品查询
			this.setLabel("jujz");
		}
	}
	
	/**
	 * 根据查询条件，获取查询聚划算商品的URL
	 */
	public String getQueryUrl(){
		String queryUrl = JuConstant.JU_URL;
		String queryString = "";
		
		//设置商品类型
		if (StringUtils.isNotEmpty(this.type)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="type=" + this.type;
			} else {
				queryString +="&type=" + this.type;
			}
		}
		
		//设置当前页数
		if (StringUtils.isNotEmpty(this.page)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="page=" + this.page;
			} else {
				queryString +="&page=" + this.page;
			}
		}
		
		//设置每页商品数
		if (StringUtils.isNotEmpty(this.psize)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="psize=" + this.psize;
			} else {
				queryString +="&psize=" + this.psize;
			}
		}
		
		//设置前台类目ID
		if (StringUtils.isNotEmpty(this.frontCatId)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="frontCatId=" + this.frontCatId;
			} else {
				queryString +="&frontCatId=" + this.frontCatId;
			}
		}
		
		//设置前台普通商品标签ID
		if (StringUtils.isNotEmpty(this.label)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="label=" + this.label;
			} else {
				queryString +="&label=" + this.label;
			}
		}
		
		//设置商品的发布平台Id（即渠道ID）
		if (StringUtils.isNotEmpty(this.platformId)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="platformId=" + this.platformId;
			} else {
				queryString +="&platformId=" + this.platformId;
			}
		}
		
		//设置当前城市 以GBK进行编码
		if (StringUtils.isNotEmpty(this.ck)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="ck=" + this.ck;
			} else {
				queryString +="&ck=" + this.ck;
			}
		}
		
		//设置排序类型
		if (StringUtils.isNotEmpty(this.stype)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="stype=" + this.stype;
			} else {
				queryString +="&stype=" + this.stype;
			}
		}
		
		//设置顺序类型
		if (StringUtils.isNotEmpty(this.reverse)){
			if (StringUtils.isEmpty(queryString)){
				queryString +="reverse=" + this.reverse;
			} else {
				queryString +="&reverse=" + this.reverse;
			}
		}
		
		if (StringUtils.isEmpty(queryString)){
			return queryUrl;
		} else {
			return queryUrl + "?" + queryString;
		}
	}
}
