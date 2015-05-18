package com.spring3.mvc.service;

import com.spring3.mvc.model.User;

public interface LoginService {
	public boolean isAuthorizedUser(User user);
}
