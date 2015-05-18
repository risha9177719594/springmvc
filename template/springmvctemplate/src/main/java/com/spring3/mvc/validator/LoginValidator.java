package com.spring3.mvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.spring3.mvc.model.User;

@Component
public class LoginValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name",
				"required.name", "Please enter username.");

		ValidationUtils.rejectIfEmpty(errors, "password", "required.password",
				"Please enter password.");
	}

}
