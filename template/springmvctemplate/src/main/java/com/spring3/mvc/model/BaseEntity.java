package com.spring3.mvc.model;

import java.io.Serializable;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

/**
 * Base abstract class for ORM mapping entities.
 */
public abstract class BaseEntity<T extends Serializable> implements Identifiable<T> {

	public static final long serialVersionUID = 227325277L;

	/** {@inheritDoc} */
	@Override
	public boolean equals(Object obj) {
		EqualsBuilder builder;
		BaseEntity<?> entity;
		
		if (obj == null || !obj.getClass().equals(this.getClass())) {
			return false;
		}
		
		entity = (BaseEntity<?>) obj;
		builder = new EqualsBuilder();
		builder.append(this.getIdentifier(), entity.getIdentifier());
		
		return builder.isEquals();
	}

	/** {@inheritDoc} */
	@Override
	public int hashCode() {
		HashCodeBuilder builder;
		builder = new HashCodeBuilder();
		builder.append(this.getIdentifier());
		return builder.toHashCode();
	}

	/** {@inheritDoc} */
	@Override
	public String toString() {
		return String.format("[%s object, key: %s]", this.getClass().getSimpleName(), this.getIdentifier());
	}
	
	
}
