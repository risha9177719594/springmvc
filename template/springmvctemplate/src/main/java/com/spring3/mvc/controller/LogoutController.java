package com.spring3.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring3.mvc.util.Constants;

@Controller
@RequestMapping(value = "/logout")
public class LogoutController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (null != session) {
			session.removeAttribute(Constants.LOGGEDIN_USER);
			session.invalidate();
		}
		return "redirect:login";
	}

}
