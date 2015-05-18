package com.spring3.mvc.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "APPLICATIONERROR")
public class ApplicationError extends BaseEntity<java.lang.Long> {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private Long id;

	@Column(name = "MESSAGE")
	private String message;

	@Column(name = "STACKTRACE")
	private String stackTrace;

	@Column(name = "GENERATEDDATE")
	private Date generatedDate;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message
	 *            the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * @return the stackTrace
	 */
	public String getStackTrace() {
		return stackTrace;
	}

	/**
	 * @param stackTrace
	 *            the stackTrace to set
	 */
	public void setStackTrace(String stackTrace) {
		this.stackTrace = stackTrace;
	}

	/**
	 * @return the generatedDate
	 */
	public Date getGeneratedDate() {
		return generatedDate;
	}

	/**
	 * @param generatedDate
	 *            the generatedDate to set
	 */
	public void setGeneratedDate(Date generatedDate) {
		this.generatedDate = generatedDate;
	}

	public Long getIdentifier() {
		return id;
	}

	public void setIdentifier(Long identifier) {
		this.id = identifier;
	}

}
