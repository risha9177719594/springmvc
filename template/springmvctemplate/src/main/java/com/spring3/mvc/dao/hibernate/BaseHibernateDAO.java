package com.spring3.mvc.dao.hibernate;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.spring3.mvc.dao.DAO;
import com.spring3.mvc.util.ReflectionUtil;

@Repository
public abstract class BaseHibernateDAO<E, PK extends Serializable> implements
		DAO<E, PK> {
	
	@Resource(name="hibernateTemplate")
	private HibernateTemplate template;
	
	private Class<E> persistentClass;

	@SuppressWarnings("unchecked")
	public BaseHibernateDAO() {
		Type[] types;
		types = ReflectionUtil.getParameterizedTypes(this);
		persistentClass = (Class<E>) types[0];
	}

	public E findById(PK id) {
		Object object = template.get(getPersistenceClass(), id);
		return getPersistenceClass().cast(object);
	}

	public void save(E newInstance) {
		template.save(newInstance);
	}

	public void update(E transientObject) {
		template.update(transientObject);
	}

	protected E saveOrUpdate(E newInstance) {
		template.saveOrUpdate(newInstance);
		return newInstance;
	}

	public void delete(E persistentObject) {
		template.delete(persistentObject);
	}

	@SuppressWarnings("unchecked")
	public List<E> findAll() {
		return createCriteria().list();
	}

	protected Criteria createCriteria() {
		return getSession().createCriteria(getPersistenceClass());
	}

	/**
	 * This method will be used to fetching the list of records by applying the
	 * search filters present in SearchObject
	 * 
	 * @param searchObject
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<E> searchCriteria(Criteria criteria) {
		return criteria.list();
	}

	/**
	 * This method will be used to get the count of records present by applying
	 * the search criteria
	 * 
	 * @param searchObject
	 * @return
	 */
	public Integer getRecordCount(Criteria criteria) {
		criteria.setProjection(Projections.rowCount());
		Integer count = (Integer) criteria.list().get(0);
		criteria.setProjection(null);
		return count;
	}

	private Session getSession() {
		return template.getSessionFactory().getCurrentSession();
	}

	protected void clear() {
		template.clear();
	}

	protected void flush() {
		template.flush();
	}
	
	protected Class<E> getPersistenceClass() {
		return persistentClass;
	}
	
	public HibernateTemplate getTemplate() {
		return template;
	}

}
