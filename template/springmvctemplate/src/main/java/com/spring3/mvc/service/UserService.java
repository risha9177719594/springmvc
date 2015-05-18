package com.spring3.mvc.service;

import java.util.List;

import com.spring3.mvc.model.User;

public interface UserService {

	public List<User> usersList();

	public void createUser(User user);
	
}
