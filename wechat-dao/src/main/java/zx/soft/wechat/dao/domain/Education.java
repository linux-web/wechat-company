package zx.soft.wechat.dao.domain;

/**
 * 教育信息
 * 
 * @author wgybzb
 *
 */
public class Education {

	// 大学名称
	private String school;
	// 学院名称
	private String institute;
	// 专业名称
	private String major;
	// 专业描述
	private String description;
	// 入学时间
	private long start;
	// 毕业时间
	private long end;
	// 学校地址
	private String location;

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

}
