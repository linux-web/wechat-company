package zx.soft.wechat.dao.domain;

/**
 * 当前工作信息
 * 
 * @author wgybzb
 *
 */
public class CurrentJob {

	// 公司名称
	private String company;
	// 工号
	private int jobid;
	// 部门名称
	private String department;
	// 职位
	private String position;
	// 入职时间
	private long hiredtime;
	// 工作状态
	private String currentState;
	// 办公室位置
	private String location;
	// 工作描述
	private String description;

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getJobid() {
		return jobid;
	}

	public void setJobid(int jobid) {
		this.jobid = jobid;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public long getHiredtime() {
		return hiredtime;
	}

	public void setHiredtime(long hiredtime) {
		this.hiredtime = hiredtime;
	}

	public String getCurrentState() {
		return currentState;
	}

	public void setCurrentState(String currentState) {
		this.currentState = currentState;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
