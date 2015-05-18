package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Player")
public class Captain {
	String current_captain;
	String mtype;
	String personid;
	String firstName;
	String lastName;
	@XmlAttribute(name="current_captain")
	public String getCurrent_captain() {
		return current_captain;
	}
	public void setCurrent_captain(String current_captain) {
		this.current_captain = current_captain;
	}
	@XmlAttribute(name="mtype")
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	@XmlAttribute(name="personid")
	public String getPersonid() {
		return personid;
	}
	public void setPersonid(String personid) {
		this.personid = personid;
	}
	@XmlElement(name="FirstName")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@XmlElement(name="LastName")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	

}
