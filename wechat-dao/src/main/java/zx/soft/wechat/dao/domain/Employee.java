package zx.soft.wechat.dao.domain;

import java.util.ArrayList;
import java.util.List;

/**
 * 员工信息类
 * 
 * @author wgybzb
 *
 */
public class Employee {

	// 个人信息
	private final Person person;
	// 教育信息
	private final List<Education> educations;
	// 工作履历
	private final List<Career> careers;
	// 当前工作信息
	private final CurrentJob currentJob;

	public Employee(Builder builder) {
		this.person = builder.person;
		this.educations = builder.educations;
		this.careers = builder.careers;
		this.currentJob = builder.currentJob;
	}

	public static class Builder {

		private Person person = null;
		private List<Education> educations = new ArrayList<>();
		private List<Career> careers = new ArrayList<>();
		private CurrentJob currentJob = null;

		public Builder(Person person) {
			this.person = person;
		}

		public Builder setEducation(List<Education> educations) {
			this.educations = educations;
			return this;
		}

		public Builder setCareer(List<Career> careers) {
			this.careers = careers;
			return this;
		}

		public Builder setCurrentJob(CurrentJob currentJob) {
			this.currentJob = currentJob;
			return this;
		}

		public Employee build() {
			return new Employee(this);
		}

	}

	public Person getPerson() {
		return person;
	}

	public List<Education> getEducation() {
		return educations;
	}

	public List<Career> getCareer() {
		return careers;
	}

	public CurrentJob getCurrentJob() {
		return currentJob;
	}

}
