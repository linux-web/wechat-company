package zx.soft.wechat.dao.domain;

/**
 * 查找参数
 * 
 * @author wgybzb
 *
 */
public class SelectParams {

	private String tablename;
	private int id;

	public SelectParams(String tablename, int id) {
		this.tablename = tablename;
		this.id = id;
	}

	public String getTablename() {
		return tablename;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
