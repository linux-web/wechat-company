package zx.soft.wechat.dao.domain;

/**
 * 读取员工信息
 * 
 * @author wgybzb
 *
 */
public class SelectEmployee {

	private int uid;
	// 个人信息
	private String person;
	// 教育信息
	private String educations;
	// 工作履历
	private String careers;
	// 当前工作信息
	private String currentJob;

	public SelectEmployee() {
		//
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public String getEducations() {
		return educations;
	}

	public void setEducations(String educations) {
		this.educations = educations;
	}

	public String getCareers() {
		return careers;
	}

	public void setCareers(String careers) {
		this.careers = careers;
	}

	public String getCurrentJob() {
		return currentJob;
	}

	public void setCurrentJob(String currentJob) {
		this.currentJob = currentJob;
	}

}
