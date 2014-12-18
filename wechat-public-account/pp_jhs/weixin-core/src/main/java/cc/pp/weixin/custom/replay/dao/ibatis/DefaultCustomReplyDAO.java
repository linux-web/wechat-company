package cc.pp.weixin.custom.replay.dao.ibatis;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import cc.pp.weixin.custom.replay.dao.CustomReplyDAO;
import cc.pp.weixin.utils.CustomRelplyUtils;

public class DefaultCustomReplyDAO implements CustomReplyDAO {
	private static Logger log = Logger.getLogger(DefaultCustomReplyDAO.class);
	@Override
	public String getCustomReply(long uid) {
		String customReplyJson = CustomRelplyUtils.readRelplyJson();
		if (StringUtils.isEmpty(customReplyJson)){
			log.warn("Got CustomReplyJson isEmpty");
		}
		return customReplyJson;
	}
}
