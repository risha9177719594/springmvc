package com.spring3.mvc.dao.hibernate;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.spring3.mvc.dao.EmployeeDAO;
import com.spring3.mvc.model.Employee;

@Repository
public class EmployeeDAOImpl extends
		BaseHibernateDAO<Employee, java.lang.Integer> implements EmployeeDAO {
	public Employee getEmployeeByName(String empName) {
		Criteria criteria;
		criteria = createCriteria();
		criteria.add(Restrictions.eq("username", empName));
		return (Employee) criteria.uniqueResult();
	}

	public List<Employee> employeeList(String sidx, String sord, int rows,
			int from) {
		Criteria criteria = createCriteria();
		if (sord.equals("asc"))
			criteria.addOrder(Order.asc(sidx));
		else
			criteria.addOrder(Order.desc(sidx));
		criteria.createAlias("role", "role");
		criteria.setFirstResult(from);
		criteria.setMaxResults(rows);
		return searchCriteria(criteria);
	}

	public int getEmployeeCount() {
		Criteria criteria = createCriteria();
		return getRecordCount(criteria);
	}
}
