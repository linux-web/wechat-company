package cc.pp.weixin.custom.replay.manager;

import cc.pp.weixin.domain.custom.reply.CustomReply;



public interface CustomReplyManager {
	/**
	 * 查询当前用户的自定义回复
	 * @param content 用户的Id 
	 */
	CustomReply getCustomReply(long uid);
}
