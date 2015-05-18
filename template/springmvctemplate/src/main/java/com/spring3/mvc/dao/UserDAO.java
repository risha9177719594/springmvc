package com.spring3.mvc.dao;

import com.spring3.mvc.model.User;

public interface UserDAO extends DAO<User, java.lang.Integer> {
	public User getUserByName(String userName);
}
