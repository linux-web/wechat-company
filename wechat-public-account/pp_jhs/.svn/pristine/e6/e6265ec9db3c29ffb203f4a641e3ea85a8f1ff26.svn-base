package cc.pp.weixin.utils;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.httpclient.URIException;
import org.apache.commons.httpclient.util.URIUtil;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonNode;

import cc.pp.weixin.constant.Constant;
import cc.pp.weixin.domain.keyword.KeyWordInfo;
import cc.pp.weixin.util.HttpUtils;
import cc.pp.weixin.util.JsonUtils;

public class KeyWordUtil {
	private static Logger logger = Logger.getLogger(KeyWordUtil.class);
	
	/** 
     * 对指定的内容进行分词
     * 
     * @param content             要进行分词的内容 
     * @return 					
     *                             JSON格式的分词结果 
     */ 
	public static String getKeyWords(String content){
		//组装查询参数
		
		//知道token信息
		String queryString = "token=mnvrjierrdqdiefxanjp";
		
		//指定词性
		String character = "";
		try {
			character = URIUtil.encodeAll(character, Constant.KEY_WORD_ENCODING);
		} catch (URIException e) {
			logger.error("When KeyWordUtil.getKeyWords error", e);
		}
		queryString = queryString + "&character=" + character;
		
		//知道获取的分词个数
		queryString = queryString + "&wdcount=10";
		
		//对内容进行编码
		String contentEncode = "";
		try {
			contentEncode = URIUtil.encodeAll(content, Constant.KEY_WORD_ENCODING);
		} catch (URIException e) {
			logger.error("When KeyWordUtil.getKeyWords error", e);
		}
		
		queryString = queryString + "&words=" + contentEncode;
		
		String url = Constant.KEY_WORD_SERVER_URL2 + "?" + queryString;
		
		//调用分词服务，获取分词
		String  response = HttpUtils.doGet(url, Constant.KEY_WORD_ENCODING);
		return response;
	}
	
	/** 
     * 对指定的内容进行分词,并获取分词结果列表
     * 
     * @param content             要进行分词的内容 
     * @return 					
     *                             分词结果列表 
     */ 
	public static List<KeyWordInfo> getKeyWordList(String content){
		//获取JSON格式的分词结果
		String jsonKeyWords = KeyWordUtil.getKeyWords(content);
		if(StringUtils.isNotEmpty(content) && StringUtils.isEmpty(jsonKeyWords)){
			logger.warn("KeyWordUtil.getKeyWords result isEmpty");
		} else {
			logger.info("KeyWordUtil.getKeyWords result is:" + jsonKeyWords);
		}
		
		//解析JSON格式的分词结果，获取分词列表
		JsonNode jsonKeyWordsNode = JsonUtils.getJsonNode(jsonKeyWords);
		if (jsonKeyWordsNode == null){
			return null;
		}
		
		JsonNode jsonKeyWordListNode = JsonUtils.getJsonNode(jsonKeyWordsNode,"wordList");
		if (jsonKeyWordListNode == null){
			return null;
		}
		
		List<KeyWordInfo> keyWordInfoList = new ArrayList<KeyWordInfo>();
		for (JsonNode wordNode:jsonKeyWordListNode){
			if (wordNode == null){
				continue;
			}
			KeyWordInfo keyWordInfo = new KeyWordInfo();
			
			//关键词
			String word = wordNode.get("word").asText();
			keyWordInfo.setKeyWord(word);
			
			//关键词权重
			String weight = wordNode.get("weight").asText();
			if (StringUtils.isNumeric(weight)){
				keyWordInfo.setWeight(Integer.valueOf(weight));
			}
			
			//关键词分类
			String type = wordNode.get("type").asText();
			keyWordInfo.setType(type);
			
			keyWordInfoList.add(keyWordInfo);
		}
		
		return keyWordInfoList;
	}
}
