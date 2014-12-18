package cc.pp.weixin.util;

import net.sourceforge.pinyin4j.PinyinHelper;

import org.apache.commons.lang.StringUtils;

/**
 * 汉字拼音工具类，主要用于：
 * 从字符串中获取拼音首字母信息；
 *
 * @author wgybzb
 * @since 2013-04-09
 */
public class PinyinUtils {
	/**
	 * 从字符串中，获取拼音首字母
	 *
	 * @param strValue	要获取拼音首字母的字符串
	 * @return
	 * 所有汉字的拼音首字母：
     * 如果是汉字，返回汉字的拼音的第一个字母
     * 如果是英文直接返回第一个字母，
     * 如果是数字直接返回数字
	 */
	public static String getInitials(String strValue){
		String initialsValues = "";
        if(StringUtils.isEmpty(strValue)){
           return StringUtils.EMPTY;
        }
        for(int i =0;i<strValue.length();i++){
        	char charValue = strValue.charAt(i);
        	String firstSpell = "";
        	//若第一个字符是英文字母，则直接返回对应的小写字母
            if ((charValue >= 'a' && charValue <= 'z') || (charValue >= 'A' && charValue <= 'Z')) {
            	firstSpell = String.valueOf(charValue).toLowerCase();
            } else if(StringUtils.isNumeric(charValue+"")) {
            	//获取的是数字的情况，直接返回数字
            	firstSpell = String.valueOf(charValue).toLowerCase();
            } else {
            	//获取第一个字符的拼音，可能含有多个拼音（多音字情况）
            	String[] pinyins = PinyinHelper.toHanyuPinyinStringArray(charValue);
            	if (pinyins != null && pinyins.length>0){
            		firstSpell = StringUtils.substring(pinyins[0].trim(), 0, 1);
            	}
            }
            initialsValues = initialsValues + firstSpell;

        }
        return initialsValues;
	}
}
