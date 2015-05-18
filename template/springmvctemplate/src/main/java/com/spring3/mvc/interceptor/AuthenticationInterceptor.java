package com.spring3.mvc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring3.mvc.util.Constants;

@Component
public class AuthenticationInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String uri = request.getRequestURI();
		if (!uri.endsWith("login") && !uri.endsWith("/")) {
			Boolean isLoggedInUser = (Boolean) request.getSession()
					.getAttribute(Constants.LOGGEDIN_USER);
			if (isLoggedInUser == null) {
				response.sendRedirect("login");
				return false;
			}
		}
		return true;
	}
	
}