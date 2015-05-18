package com.spring3.mvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring3.mvc.dao.EmployeeDAO;
import com.spring3.mvc.model.Employee;
import com.spring3.mvc.service.EmployeeService;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO employeeDAO;

	@Transactional
	public List<Employee> employeeList() {
		return employeeDAO.findAll();
	}

	@Transactional
	public void create(Employee employee) {
		employeeDAO.save(employee);
	}

	@Transactional
	public void update(Employee employee) {
		Employee empDetails = employeeDAO.getEmployeeByName(employee
				.getUsername());
		empDetails.setUsername(employee.getUsername());
		empDetails.setFirstName(employee.getFirstName());
		empDetails.setLastName(employee.getLastName());
		empDetails.setRole(employee.getRole());
		employeeDAO.save(empDetails);
	}

	@Transactional
	public void delete(Employee employee) {
		Employee empDetails = employeeDAO.getEmployeeByName(employee
				.getUsername());
		employeeDAO.delete(empDetails);
	}

	@Transactional
	public Employee getEmployeeByName(String empName) {
		return employeeDAO.getEmployeeByName(empName);
	}

	@Transactional
	public List<Employee> employeeList(String sidx, String sord, int rows,
			int from) {
		return employeeDAO.employeeList(sidx, sord, rows, from);
	}

	@Transactional
	public int getEmployeeCount() {
		return employeeDAO.getEmployeeCount();
	}

	/**
	 * @param employeeDAO
	 *            the employeeDAO to set
	 */
	public void setEmployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}

}
