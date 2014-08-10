package zx.soft.wechat.dao.domain;

/**
 * 个人信息
 * 
 * @author wgybzb
 *
 */
public class Person {

	// 姓名
	private String name;
	// 性别：f-女，m-男
	private String sex;
	// 年龄
	private int age;
	// 家乡
	private String hometown;
	// 身高：cm
	private int height;
	// 体重：kg
	private int weight;
	// 婚否
	private boolean marriage;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getHometown() {
		return hometown;
	}

	public void setHometown(String hometown) {
		this.hometown = hometown;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public boolean isMarriage() {
		return marriage;
	}

	public void setMarriage(boolean marriage) {
		this.marriage = marriage;
	}

}
