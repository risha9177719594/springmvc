package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="squad")
public class Squad {
	String photo;
	String age;	
	String i;	
	String full;	
	String captain;
	String keeper;
	@XmlElement(name="photo")
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@XmlElement(name="age")
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	@XmlElement(name="i")
	public String getI() {
		return i;
	}
	public void setI(String i) {
		this.i = i;
	}
	@XmlElement(name="full")
	public String getFull() {
		return full;
	}
	public void setFull(String full) {
		this.full = full;
	}
	@XmlElement(name="captain")
	public String getCaptain() {
		return captain;
	}
	public void setCaptain(String captain) {
		this.captain = captain;
	}
	@XmlElement(name="keeper")
	public String getKeeper() {
		return keeper;
	}
	public void setKeeper(String keeper) {
		this.keeper = keeper;
	}

}
