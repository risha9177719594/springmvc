package com.spring3.mvc.dao;

import java.util.List;

import com.spring3.mvc.model.Employee;

public interface EmployeeDAO extends DAO<Employee, java.lang.Integer> {

	public Employee getEmployeeByName(String empName);

	public List<Employee> employeeList(String sidx, String sord, int rows,
			int from);

	public int getEmployeeCount();

}
