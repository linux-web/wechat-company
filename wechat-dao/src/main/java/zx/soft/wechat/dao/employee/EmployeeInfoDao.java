package zx.soft.wechat.dao.employee;

import zx.soft.wechat.dao.domain.InsertEmployee;
import zx.soft.wechat.dao.domain.SelectEmployee;
import zx.soft.wechat.dao.domain.SelectParams;

/**
 * 员工信息接口
 * 
 * @author wgybzb
 *
 */
public interface EmployeeInfoDao {

	/**
	 * 插入员工信息
	 */
	public void insertEmployee(InsertEmployee insertEmployee);

	/**
	 * 读取员工信息：根据工号
	 */
	public SelectEmployee selectEmployeeById(SelectParams id);

	/**
	 * 更新员工信息
	 */
	public void updateEmployee(InsertEmployee insertEmployee);

	/**
	 * 删除员工信息
	 */
	public void deleteEmployee(SelectParams id);

}
