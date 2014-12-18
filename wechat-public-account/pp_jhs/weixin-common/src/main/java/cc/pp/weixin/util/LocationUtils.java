package cc.pp.weixin.util;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.JsonNode;

/**
 * Http工具类，用于执行一个请求
 * @author wgybzb
 * @since  2013-04-09
 *
 */
public class LocationUtils {
	private static String BAIDU_MAP_URL = "http://api.map.baidu.com/geocoder";
	/**
	 * 百度地图密钥，通过注册百度账号获取
	 */
	private static String BAIDU_MAP_KEY = "039bb734c92d606ffe47281aa3ee97fd";

	/**
     * 根据坐标获取地址信息
     *
     * @param locationX         地理位置纬度
     * @param locationX         地理位置纬度
     * @return 					 JSON格式的地址信息
     */
	private static String genBaiduMapUrl(double locationX,double locationY){
		String url = BAIDU_MAP_URL + "?output=json&key=" + BAIDU_MAP_KEY;
		url = url + "&location=" + locationX + "," + locationY;
		return url;
	}

	/**
     * 根据坐标获取地址信息
     *
     * @param locationX         地理位置纬度
     * @param locationX         地理位置纬度
     * @return 					 JSON格式的地址信息
     */
	public static String getJsonAddress(double locationX,double locationY){
		String url = LocationUtils.genBaiduMapUrl(locationX, locationY);
		String jsonAddress = HttpUtils.doGet(url, "utf-8");
		return jsonAddress;
	}

    /**
     * 根据坐标获取地址
     *
     * @param locationX         地理位置纬度
     * @param locationX         地理位置纬度
     * @return 					 城市
     */
	public static String getCity(double locationX,double locationY){
		String jsonAddress = LocationUtils.getJsonAddress(locationX, locationY);
		JsonNode jsonNode = JsonUtils.getJsonNode(jsonAddress);
		if (jsonNode ==null){
			return StringUtils.EMPTY;
		}

		JsonNode resultNode = JsonUtils.getJsonNode(jsonNode,"result");
		if (resultNode ==null){
			return StringUtils.EMPTY;
		}

		JsonNode addressComponentNode = JsonUtils.getJsonNode(resultNode 	,"addressComponent");
		if (addressComponentNode ==null){
			return StringUtils.EMPTY;
		}

		if (addressComponentNode.get("city") == null){
			return StringUtils.EMPTY;
		}

		String city = addressComponentNode.get("city").asText();
		return city;
	}
}
