package com.spring3.mvc.dao;

import java.io.Serializable;
import java.util.List;

public interface DAO<E, PK extends Serializable> {

	void save(E newInstance);
	void update(E transientObject);
	void delete(E persistentObject);
	E findById(PK id);
	List<E> findAll();

}
