package com.biller.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biller.dao.CricketDAO;
import com.biller.model.OnTheRun;

@Service
public class CricketDAOImpl implements CricketDAO{
	
	@PersistenceContext
    EntityManager em;

	@Transactional
	public OnTheRun getONR() {
		String sql = "FROM OnTheRun";
		Query query = em.createQuery(sql);
		query.setFirstResult(0);
		query.setMaxResults(1);
		OnTheRun o=(OnTheRun)query.getSingleResult();
		if(null!=o)
			System.out.println(o.getComent());
		return o; 
	}

	@Override
	public void saveONR(OnTheRun onr) {
		em.persist(onr);
		
		
		
	}

}
