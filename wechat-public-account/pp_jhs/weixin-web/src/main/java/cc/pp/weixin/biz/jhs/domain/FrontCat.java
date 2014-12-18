package cc.pp.weixin.biz.jhs.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import cc.pp.weixin.constant.CommonConstants;
import cc.pp.weixin.util.PinyinUtils;

public class FrontCat implements Serializable  {
	private static final long serialVersionUID = -8018370866281967967L;
	
	public FrontCat() {
		
	}
	public FrontCat(String catId, String catName) {
		this.catId = catId;
		this.catName = catName;
	}
	
	/**
	 * 前台类目ID
	 */
	private String catId;
	public String getCatId() {
		return catId;
	}
	public void setCatId(String catId) {
		this.catId = catId;
	}
	
	/**
	 * 前台类目名称
	 */
	private String catName;
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	
	/**
	 * 前台类目名称同义词列表
	 */
	private List<String> synonymsList = new ArrayList<String>();
	public List<String> getSynonymsList() {
		return synonymsList;
	}
	public void setSynonymsList(List<String> synonymsList) {
		this.synonymsList = synonymsList;
	}
	
	/**
	 * 进行匹配到的前台类目名称或同义词名称
	 */
	private String mactchedCatName;
	public String getMactchedCatName() {
		return mactchedCatName;
	}
	public void setMactchedCatName(String mactchedCatName) {
		this.mactchedCatName = mactchedCatName;
	}
	
	/**
	 * 为当前前台类目添加同义词
	 * @param catNameSynonyms 前台类目的同义词列表
	 */
	public void addCatNameSynonyms(String catNameSynonyms){
		if (StringUtils.isEmpty(catNameSynonyms)){
			return;
		}
		String[] catNameSynonymsArr = catNameSynonyms.split(CommonConstants.COMMA_SPLIT_FLAG);
		for (String synCatName:catNameSynonymsArr){
			synonymsList.add(synCatName);
		}
	}
	
	/**
	 * 判定用户输入的类目是否与当前系统的前台类目相似
	 * @param catNameParm   用户输入的类目信息
	 * 
	 * @return 
	 * true:相似；false:不相似
	 */
	public boolean existCurCatName(String catNameParm){
		boolean isSimilar = this.isSimilar(this.catName, catNameParm);
		return isSimilar;
	}
	
	/**
	 * 判定用户输入的类目是否与当前系统的前台类目的同义词是否相似
	 * @param catNameParm   用户输入的类目信息
	 * 
	 * @return 
	 * true:相似；false:不相似
	 */
	public boolean existCurSynonymsCatName(String catNameParm){
		boolean isSimilar = false;
		
		for (String catNameSynonyms:synonymsList){
			isSimilar = this.isSimilar(catNameSynonyms, catNameParm);
			if (isSimilar){
				return isSimilar;
			}
		}
		return isSimilar;
	}
	
	
	/**
	 * 比较当前的两个类目是否相似
	 * @param sysCatName    系统的前台类目
	 * @param catNameParm   用户输入的类目信息
	 * 
	 * @return 
	 * true:相似；false:不相似
	 */
	public boolean isSimilar(String sysCatName,String catNameParm){
		boolean result = false;
		if (StringUtils.equals(sysCatName, catNameParm)){
			result =  true;
			this.setMactchedCatName(catNameParm);
		}
		
		if (StringUtils.contains(sysCatName, catNameParm)){
			result =  true;
			this.setMactchedCatName(catNameParm);
		}
		
		if (StringUtils.contains(catNameParm, sysCatName)){
			result =  true;
			this.setMactchedCatName(sysCatName);
		}
		
		//输入前台类目首字母的情况
		String catNameInitials = PinyinUtils.getInitials(sysCatName);
		catNameParm = catNameParm.toLowerCase();
		if (StringUtils.contains(catNameInitials, catNameParm)){
			result =  true;
			this.setMactchedCatName(catNameParm);
		}
		
		if (StringUtils.contains(catNameParm, catNameInitials)){
			result =  true;
			this.setMactchedCatName(catNameInitials);
		}
		return result;
	}
	
	/**
	 * 构造今日团前台类目信息
	 */	
	public static Map<String,FrontCat> genTodayFrontCatMap(){
		Map<String,FrontCat> todayFrontCatMap  = new HashMap<String,FrontCat>();
		
		FrontCat frontCat1 = new FrontCat("1000", "服饰");
		frontCat1.addCatNameSynonyms("服装,衣服");
		todayFrontCatMap.put(frontCat1.getCatId(), frontCat1);
		
		FrontCat frontCat2 = new FrontCat("42000", "配饰");
		frontCat2.addCatNameSynonyms("配件,佩戴品,项链,耳钉,手链,头饰,耳饰,手镯");
		todayFrontCatMap.put(frontCat2.getCatId(), frontCat2);
		
		FrontCat frontCat3 = new FrontCat("2000","美妆");
		frontCat3.addCatNameSynonyms("化妆品,洁面,爽肤水,面膜,眼霜,防晒霜,彩妆,香水,BB霜,美甲,唇膏,眼线");
		todayFrontCatMap.put(frontCat3.getCatId(), frontCat3);
		
		FrontCat frontCat4 = new FrontCat("3000","鞋包");
		frontCat4.addCatNameSynonyms("鞋子,包包,手提箱,手提包,双肩包,卡包,卡套,旅行箱,旅行包");
		todayFrontCatMap.put(frontCat4.getCatId(), frontCat4);
		
		FrontCat frontCat5 = new FrontCat("38000","运动");
		frontCat5.addCatNameSynonyms("户外,活动,帐篷,登山,骑车,运动鞋,运动服,跑步机,舞蹈");
		todayFrontCatMap.put(frontCat5.getCatId(), frontCat5);
		
		FrontCat frontCat6 = new FrontCat("6000","母婴");
		frontCat6.addCatNameSynonyms("小孩子,婴儿,新生儿,奶粉,孕产用品,孕裤,吸奶,哺乳,婴装,儿童");
		todayFrontCatMap.put(frontCat6.getCatId(), frontCat6);
		
		FrontCat frontCat7 = new FrontCat("5000","食品");
		frontCat7.addCatNameSynonyms("零食,特产,食物");
		todayFrontCatMap.put(frontCat7.getCatId(), frontCat7);
		
		FrontCat frontCat8 = new FrontCat("34000","电器");
		frontCat8.addCatNameSynonyms("小家电,厨电,厨卫,家用,空调,冰箱,洗衣机,电视机,电灯,电话,电风扇");
		todayFrontCatMap.put(frontCat8.getCatId(), frontCat8);
		
		FrontCat frontCat9 = new FrontCat("43000","数码");
		frontCat9.addCatNameSynonyms("智能机,电脑,笔记本,手机,相机,单反,苹果,三星,pad,平板");
		todayFrontCatMap.put(frontCat9.getCatId(), frontCat9);
		
		FrontCat frontCat10 = new FrontCat("35000","家居");
		frontCat10.addCatNameSynonyms("床品,家饰,被子,褥子,枕头,卫浴,热水器,蚊帐,毯子,毛毯,靠垫子,床垫子");
		todayFrontCatMap.put(frontCat10.getCatId(), frontCat10);
		
		FrontCat frontCat11 = new FrontCat("37000","百货");
		frontCat11.addCatNameSynonyms("日用品,生活用品,生活常用,拖把,压缩袋,旋转拖,清洁");
		todayFrontCatMap.put(frontCat11.getCatId(), frontCat11);
		
		FrontCat frontCat12 = new FrontCat("36000","更多");
		frontCat12.addCatNameSynonyms("其他类,其它");
		todayFrontCatMap.put(frontCat12.getCatId(), frontCat12);
		
		return todayFrontCatMap;
	}
	
	/**
	 * 本地生活前台类目
	 */	
	public static Map<String,FrontCat> genLocalFrontCatMap(){
		Map<String,FrontCat> localFrontCatMap  = new HashMap<String,FrontCat>();
		
		FrontCat frontCat1 = new FrontCat("9000","美食");
		frontCat1.addCatNameSynonyms("小吃店,自助餐,大闸蟹,海鲜,料理,大排档,烤鱼");
		localFrontCatMap.put(frontCat1.getCatId(), frontCat1);
		
		FrontCat frontCat2 = new FrontCat("10000","休闲");
		frontCat2.addCatNameSynonyms("会所,针灸,养生馆,足浴,按摩");
		localFrontCatMap.put(frontCat2.getCatId(), frontCat2);
		
		FrontCat frontCat3 = new FrontCat("30000","电影");
		frontCat3.addCatNameSynonyms("影院,看电影,影城,电影院");
		localFrontCatMap.put(frontCat3.getCatId(), frontCat3);
		
		FrontCat frontCat4 = new FrontCat("11000","生活服务");
		frontCat4.addCatNameSynonyms("服务,本地服务,眼镜店,配眼镜");
		localFrontCatMap.put(frontCat4.getCatId(), frontCat4);
		
		FrontCat frontCat5 = new FrontCat("18000","丽人");
		frontCat5.addCatNameSynonyms("美发,发廊,护理");
		localFrontCatMap.put(frontCat5.getCatId(), frontCat5);
		
		FrontCat frontCat6 = new FrontCat("40000","卡劵");
		frontCat6.addCatNameSynonyms("优惠劵,优惠卡,现金劵,打折劵");
		localFrontCatMap.put(frontCat6.getCatId(), frontCat6);
		
		FrontCat frontCat7 = new FrontCat("16000","摄影");
		frontCat7.addCatNameSynonyms("照相,写真集");
		localFrontCatMap.put(frontCat7.getCatId(), frontCat7);
		
		FrontCat frontCat8 = new FrontCat("45000","甜点");
		frontCat8.addCatNameSynonyms("蛋糕,冰淇淋,甜品,面包");
		localFrontCatMap.put(frontCat8.getCatId(), frontCat8);
		
		FrontCat frontCat9 = new FrontCat("46000","KTV酒吧");
		frontCat9.addCatNameSynonyms("KTV,酒吧,娱乐");
		localFrontCatMap.put(frontCat9.getCatId(), frontCat9);
		
		FrontCat frontCat10 = new FrontCat("33000","培训");
		frontCat10.addCatNameSynonyms("家教教育,家教服务,机构");
		localFrontCatMap.put(frontCat10.getCatId(), frontCat10);
		
		FrontCat frontCat11 = new FrontCat("44000","旅游");
		frontCat11.addCatNameSynonyms("度假,游玩,外出,旅行社");
		localFrontCatMap.put(frontCat11.getCatId(), frontCat11);
		
		FrontCat frontCat12 = new FrontCat("39000","酒店");
		frontCat12.addCatNameSynonyms("旅馆,宾馆,住宿");
		localFrontCatMap.put(frontCat12.getCatId(), frontCat12);
		
		FrontCat frontCat13 = new FrontCat("14000","粮油生鲜");
		frontCat11.addCatNameSynonyms("水果,鲜花,花草,香油,菜籽油,有机");
		localFrontCatMap.put(frontCat13.getCatId(), frontCat13);
		
		FrontCat frontCat14 = new FrontCat("41000","汽车服务");
		frontCat11.addCatNameSynonyms("汽车护理,汽车保养,汽车美容,汽车维修,洗车,打蜡,汽车服务机构");
		localFrontCatMap.put(frontCat14.getCatId(), frontCat14);
		
		FrontCat frontCat15 = new FrontCat("31000","通讯");
		frontCat11.addCatNameSynonyms("通话,联系,上网卡,资费卡,手机套餐");
		localFrontCatMap.put(frontCat15.getCatId(), frontCat15);
		
		FrontCat frontCat16 = new FrontCat("27000","房产汽车");
		frontCat11.addCatNameSynonyms("买房子,商品房,商业铺,旺铺,买车,买汽车");
		localFrontCatMap.put(frontCat16.getCatId(), frontCat16);
		
		
		return localFrontCatMap;
	}
}
