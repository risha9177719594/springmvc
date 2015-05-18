package com.spring3.mvc.controller;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring3.mvc.model.User;
import com.spring3.mvc.service.UserService;

@Controller
public class RedirectController {
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("/home")
	public String loginSuccess(Model model) {
		List<User> users = Collections.emptyList();
		users = userService.usersList();
		model.addAttribute("users", users);
		return "home";
	}
	
}
