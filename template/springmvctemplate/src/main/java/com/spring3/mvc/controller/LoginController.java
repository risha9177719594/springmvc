package com.spring3.mvc.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.spring3.mvc.model.User;
import com.spring3.mvc.service.LoginService;
import com.spring3.mvc.util.Constants;
import com.spring3.mvc.validator.LoginValidator;

@Controller
@RequestMapping(value = { "/", "/login" })
public class LoginController {

	private LoginValidator validator;

	@Resource(name = "loginService")
	private LoginService loginService;

	@Autowired
	public LoginController(LoginValidator validator) {
		this.validator = validator;
	}

	@RequestMapping(method = RequestMethod.GET)
	protected String setupForm(Model model) throws Exception {
		User user = new User();
		model.addAttribute("user", user);
		return "loginForm";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submitForm(@ModelAttribute("user") User user,
			BindingResult result, SessionStatus status,
			HttpServletRequest request) {

		validator.validate(user, result);
		if (result.hasErrors()) {
			return "loginForm";
		}

		if ("admin".equals(user.getName())
				&& "admin".equals(user.getPassword())) {
			request.getSession().setAttribute(Constants.LOGGEDIN_USER, true);
			return "redirect:home";
		}

		if (loginService.isAuthorizedUser(user)) {
			request.getSession().setAttribute(Constants.LOGGEDIN_USER, true);
			return "redirect:home";
		}

		result.reject("invalidCredentials", "Invalid Credentials.");
		return "loginForm";
	}

}
