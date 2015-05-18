package com.spring3.mvc.dao.hibernate;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.spring3.mvc.dao.UserDAO;
import com.spring3.mvc.model.User;

@Repository
public class UserDAOImpl extends BaseHibernateDAO<User, java.lang.Integer>
		implements UserDAO {

	public User getUserByName(String userName) {
		Criteria criteria;
		criteria = createCriteria();
		criteria.add(Restrictions.eq("name", userName));
		return (User) criteria.uniqueResult();
	}

}
