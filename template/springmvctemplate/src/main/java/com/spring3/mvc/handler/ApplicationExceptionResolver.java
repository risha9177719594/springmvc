package com.spring3.mvc.handler;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.AbstractHandlerExceptionResolver;

import com.spring3.mvc.model.ApplicationError;
import com.spring3.mvc.service.UtilityServices;
import com.spring3.mvc.util.EmailUtility;

public class ApplicationExceptionResolver extends
		AbstractHandlerExceptionResolver {

	private static final Logger logger = LoggerFactory
			.getLogger(ApplicationExceptionResolver.class);

	@Resource(name = "utilityServices")
	private UtilityServices utilityServices;

	@Autowired
	private EmailUtility emailUtility;

	/**
	 * Actually resolve the given exception that got thrown during on handler
	 * execution, returning a ModelAndView that represents a specific error page
	 * if appropriate.
	 * <p>
	 * May be overridden in subclasses, in order to apply specific exception
	 * checks. Note that this template method will be invoked <i>after</i>
	 * checking whether this resolved applies ("mappedHandlers" etc), so an
	 * implementation may simply proceed with its actual exception handling.
	 * 
	 * @param request
	 *            current HTTP request
	 * @param response
	 *            current HTTP response
	 * @param handler
	 *            the executed handler, or <code>null</code> if none chosen at
	 *            the time of the exception (for example, if multipart
	 *            resolution failed)
	 * @param ex
	 *            the exception that got thrown during handler execution
	 * @return a corresponding ModelAndView to forward to, or <code>null</code>
	 *         for default processing
	 */
	@Override
	protected ModelAndView doResolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		ModelAndView view = null;
		try {
			ex.printStackTrace();
			ApplicationError error = new ApplicationError();
			error.setMessage(ex.getMessage());
			error.setStackTrace(ExceptionUtils.getStackTrace(ex));
			error.setGeneratedDate(new Date());
			utilityServices.saveError(error);
			view = new ModelAndView("error");
			view.addObject("errorId", error.getId());
			emailUtility.sendEmail();
			return view;
		} catch (Exception e) {
			logger.error("<-- Root Cause -->\n"
					+ ExceptionUtils.getStackTrace(ex));
			logger.error("<-- New Cause -->\n"
					+ ExceptionUtils.getStackTrace(e));
			return null;
		}
	}

	public void setEmailUtility(EmailUtility emailUtility) {
		this.emailUtility = emailUtility;
	}

}
