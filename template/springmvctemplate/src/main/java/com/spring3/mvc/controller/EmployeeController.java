package com.spring3.mvc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring3.mvc.dto.JqgridResponse;
import com.spring3.mvc.dto.StatusResponse;
import com.spring3.mvc.dto.UserDto;
import com.spring3.mvc.model.Employee;
import com.spring3.mvc.model.Role;
import com.spring3.mvc.service.EmployeeService;
import com.spring3.mvc.util.UserMapper;

@Controller
@RequestMapping("/users")
public class EmployeeController {

	@Resource(name = "employeeService")
	private EmployeeService employeeService;

	@RequestMapping
	public String getUsersPage() {
		return "users";
	}

	@RequestMapping(value = "/records", produces = "application/json")
	public @ResponseBody
	JqgridResponse<Employee> records(
			@RequestParam(value = "page", required = false) Integer page,
			@RequestParam(value = "rows", required = false) Integer rows,
			@RequestParam(value = "sidx", required = false) String sidx,
			@RequestParam(value = "sord", required = false) String sord) {

		int employeeCount = employeeService.getEmployeeCount();
		int to = rows * page;
		int from = to - rows;
		List<Employee> employees = employeeService.employeeList(sidx, sord,
				rows, from);

		JqgridResponse<Employee> response = new JqgridResponse<Employee>();
		response.setRows(employees);
		response.setRecords(employeeCount);

		response.setTotal((int) Math.ceil((double) employeeCount
				/ (double) rows));
		response.setPage(page);
		return response;
	}

	@RequestMapping(value = "/get", produces = "application/json")
	public @ResponseBody
	UserDto get(@RequestBody UserDto user) {
		return UserMapper.map(employeeService.getEmployeeByName(user
				.getUsername()));
	}

	@RequestMapping(value = "/create", produces = "application/json", method = RequestMethod.POST)
	public @ResponseBody
	StatusResponse create(@RequestParam String username,
			@RequestParam String password, @RequestParam String firstName,
			@RequestParam String lastName,
			@RequestParam(value = "role.role") Integer role) {

		Employee newUser = new Employee(username, password, firstName,
				lastName, new Role(role));
		employeeService.create(newUser);
		return new StatusResponse(true);
	}

	@RequestMapping(value = "/update", produces = "application/json", method = RequestMethod.POST)
	public @ResponseBody
	StatusResponse update(@RequestParam String username,
			@RequestParam String firstName, @RequestParam String lastName,
			@RequestParam(value = "role.role") Integer role) {

		Employee existingUser = new Employee(username, firstName, lastName,
				new Role(role));
		employeeService.update(existingUser);
		return new StatusResponse(true);
	}

	@RequestMapping(value = "/delete", produces = "application/json", method = RequestMethod.POST)
	public @ResponseBody
	StatusResponse delete(@RequestParam String username) {
		Employee existingUser = new Employee(username);
		employeeService.delete(existingUser);
		return new StatusResponse(true);
	}
}
