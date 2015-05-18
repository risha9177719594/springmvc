package com.spring3.mvc.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@Entity
@Table(name = "ROLE")
@JsonIgnoreProperties(value = { "hibernateLazyInitializer", "handler" })
public class Role extends BaseEntity<java.lang.Long> {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private Long id;

	@OneToMany(mappedBy = "role")
	private Set<Employee> employees;

	@Column(name = "ROLE")
	private Integer role;

	public Role() {
	}

	public Role(Integer role) {
		this.role = role;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	/**
	 * @return the employees
	 */
	@JsonIgnore
	public Set<Employee> getEmployees() {
		return employees;
	}

	/**
	 * @param employees
	 *            the employees to set
	 */
	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}

	public Long getIdentifier() {
		return id;
	}

	public void setIdentifier(Long identifier) {
		this.id = identifier;
	}

}
