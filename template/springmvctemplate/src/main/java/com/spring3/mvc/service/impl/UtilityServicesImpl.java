package com.spring3.mvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring3.mvc.dao.ApplicationErrorDAO;
import com.spring3.mvc.model.ApplicationError;
import com.spring3.mvc.service.UtilityServices;

@Service("utilityServices")
public class UtilityServicesImpl implements UtilityServices {

	@Autowired
	private ApplicationErrorDAO applicationErrorDAO;
	
	@Transactional
	public void saveError(ApplicationError error) {
		applicationErrorDAO.save(error);
	}

	public void setApplicationErrorDAO(ApplicationErrorDAO applicationErrorDAO) {
		this.applicationErrorDAO = applicationErrorDAO;
	}

}
