package zx.soft.wechat.dao.domain;

/**
 * 职业信息
 * 
 * @author wgybzb
 *
 */
public class Career {

	// 公司名称
	private String company;
	// 工号
	private int jobid;
	// 入职时间
	private long start;
	// 离职时间
	private long end;
	// 工作职位
	private String position;
	// 工作地点
	private String location;
	// 年薪：万
	private int salary;
	// 工作描述
	private String description;
	// 离职原因
	private String reason;
	// 主要项目
	private String perjects;

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

	public long getStart() {
		return start;
	}

	public void setStart(long start) {
		this.start = start;
	}

	public long getEnd() {
		return end;
	}

	public void setEnd(long end) {
		this.end = end;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getPerjects() {
		return perjects;
	}

	public void setPerjects(String perjects) {
		this.perjects = perjects;
	}

}
