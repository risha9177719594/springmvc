package com.spring3.mvc.controller;

import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.spring3.mvc.model.User;
import com.spring3.mvc.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {

	@Resource(name = "userService")
	private UserService userService;

	private static Validator validator;

	public UserController() {
		// Initialize JSR-303 bean validation
		ValidatorFactory validatorFactory = Validation
				.buildDefaultValidatorFactory();
		validator = validatorFactory.getValidator();
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	protected String setupForm(Model model) throws Exception {
		User user = new User();
		model.addAttribute("user", user);
		return "userForm";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String submitForm(@ModelAttribute("user") User user,
			BindingResult result, SessionStatus status,
			HttpServletRequest request) {
		// Get JSR-303 errors ( See domain User class for annotations
		// validation)
		Set<ConstraintViolation<User>> violations = validator.validate(user);

		// Loop over possible errors
		for (ConstraintViolation<User> violation : violations) {
			String propertyPath = violation.getPropertyPath().toString();
			String message = violation.getMessage();
			// Add JSR-303 errors to BindingResult so Spring can display them in
			// view via a FieldError
			result.addError(new FieldError("member", propertyPath, "Invalid "
					+ propertyPath + "(" + message + ")"));
		}
		if (result.hasErrors()) 
			return "userForm";
		userService.createUser(user);
		status.setComplete();
		return "redirect:/home";
	}

}
