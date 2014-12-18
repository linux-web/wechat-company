package cc.pp.weixin.test;

import junit.framework.TestCase;

import org.apache.commons.lang.StringUtils;
import org.dom4j.Element;
import org.springframework.context.ApplicationContext;

import cc.pp.weixin.common.ParseRequestData;
import cc.pp.weixin.domain.message.request.LocationRequestMessage;
import cc.pp.weixin.util.LocationUtils;

public class LocationUtilsTest extends TestCase {
	//IoC容器
	ApplicationContext context;
	
	public LocationUtilsTest(String name) {
		super(name);
	}

	protected void setUp() throws Exception {
		super.setUp();
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}

	public void testGetJsonAddress() {
		Element rootElement = ParseRequestData.getTestXmlLocalData();
		//获取地理位置信息
		LocationRequestMessage locationRst = new LocationRequestMessage(rootElement);
		double locationX = locationRst.getLocationX();
		double locationY = locationRst.getLocationY();
		String jsonAddress = LocationUtils.getJsonAddress(locationX, locationY);
		assertTrue("获取城市信息出错", StringUtils.contains(jsonAddress, "OK"));
		assertTrue("获取城市信息出错", StringUtils.contains(jsonAddress, "addressComponent"));
		assertTrue("获取城市信息出错", StringUtils.contains(jsonAddress, "cityCode"));
	}
	
	public void testGetCity() {
		double locationX = 30.260460;
		double locationY = 120.095276;
		String city = LocationUtils.getCity(locationX, locationY);
		assertTrue("获取城市信息出错", StringUtils.contains(city, "杭州"));
	}
}
