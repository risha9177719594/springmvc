package com.spring3.mvc.model;

import java.io.Serializable;

/**
 * Base interface for an identifiable object. It is useful on ORM mapping for
 * identifying object instances.
 */
public interface Identifiable<T extends Serializable> extends Serializable {

	/**
	 * Get the identifier.
	 * @return Identifier of the entity.
	 */
	T getIdentifier();
	
	/**
	 * Set the identifier.
	 * @param identifier Assign an identifier for an entity.
	 */
	void setIdentifier(T identifier);
}
