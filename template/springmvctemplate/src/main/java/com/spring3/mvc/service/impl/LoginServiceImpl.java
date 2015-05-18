package com.spring3.mvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring3.mvc.dao.UserDAO;
import com.spring3.mvc.model.User;
import com.spring3.mvc.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private UserDAO userDAO;

	@Transactional
	public boolean isAuthorizedUser(User user) {
		User userObj = userDAO.getUserByName(user.getName());
		if (userObj != null && userObj.getPassword().equals(user.getPassword()))
			return true;
		return false;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

}
