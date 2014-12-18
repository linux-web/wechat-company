package client.replay.impl;

import java.util.HashMap;
import java.util.Map;

import pp.service.client.Service;
import cc.pp.rpc.domain.Result;
import client.replay.RuleService;
import client.replay.constant.Constants;

/**
 * 智能对话服务类，用于获取智能回复相关的数据
 * @author wgybzb
 * @since  2013-05-22
 *
 */
public class DefaultRuleService extends Service implements RuleService{
	/**
	 * 设置用到的域名，方便手动改变接口的域名
	 * 例如测试环境是可以手动指定
	 * @param host
	 */
	@Override
	public void setHost(String host){
		this.host = host;
	}

   /**
     * 通过用户ID和规则库ID
     * 获取当前自定义规则库下的所有规则
     *
     * @param uid 		用户id
     * @param replyid 	规则库ID
     *
     * @return         所有规则列表
     */
    @Override
	public Result ruleList(int uid, int replyid) {
        Map<String, Object> parmMap = new HashMap<String, Object>();
        parmMap.put("uid", uid);
        parmMap.put("replyid", replyid);
        parmMap.put("page", 1);
        parmMap.put("size", 20);

        return post("rule/lists", Constants.version, parmMap);
    }

    /**
     * 按用户提供的关键词，获取关键词的回复内容
     *
     * @param uid 		用户id
     * @param replyid 	规则库ID
     *
     * @return 		    关键词的回复内容
     */
    @Override
	public Result search(int uid, String text) {
        Map<String, Object> parmMap = new HashMap<String, Object>();
        parmMap.put("uid", uid);
        parmMap.put("text", text);

        return post("rule/search", Constants.version, parmMap);
    }
}