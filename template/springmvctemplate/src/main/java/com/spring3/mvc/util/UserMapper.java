package com.spring3.mvc.util;

import java.util.ArrayList;
import java.util.List;

import com.spring3.mvc.dto.UserDto;
import com.spring3.mvc.model.Employee;

public class UserMapper {

	public static UserDto map(Employee user) {
			UserDto dto = new UserDto();
			dto.setId(user.getId());
			dto.setFirstName(user.getFirstName());
			dto.setLastName(user.getLastName());
			dto.setUsername(user.getUsername());
			if(user.getRole()!=null)
			dto.setRole(user.getRole().getRole());
			return dto;
	}
	
	public static List<UserDto> map(List<Employee> users) {
		List<UserDto> dtos = new ArrayList<UserDto>();
		for (Employee user: users) {
			dtos.add(map(user));
		}
		return dtos;
	}
}
