package com.spring3.mvc.service;

import java.util.List;

import com.spring3.mvc.model.Employee;

public interface EmployeeService {

	public List<Employee> employeeList();

	public void create(Employee employee);

	public void update(Employee employee);

	public void delete(Employee employee);

	public Employee getEmployeeByName(String empName);

	public List<Employee> employeeList(String sidx, String sord, int rows,
			int from);

	public int getEmployeeCount();

}
