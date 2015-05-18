package com.spring3.mvc.dao.hibernate;

import org.springframework.stereotype.Repository;

import com.spring3.mvc.dao.ApplicationErrorDAO;
import com.spring3.mvc.model.ApplicationError;

@Repository
public class ApplicationErrorDAOImpl extends
		BaseHibernateDAO<ApplicationError, java.lang.Integer> implements
		ApplicationErrorDAO {

}
