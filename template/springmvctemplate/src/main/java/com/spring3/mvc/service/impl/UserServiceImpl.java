package com.spring3.mvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring3.mvc.dao.UserDAO;
import com.spring3.mvc.model.User;
import com.spring3.mvc.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	@Transactional
	public List<User> usersList() {
		return  userDAO.findAll();
	}
	
	@Transactional
	public void createUser(User user) {
		userDAO.save(user);
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

}
