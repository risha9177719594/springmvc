package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name="teams")
public class Teams {
	String i;
	String fn;
	List<Squad>	squad;
	
	String sn;
	Logo logo;
	String small;
	@XmlElement(name="i")
	public String getI() {
		return i;
	}
	public void setI(String i) {
		this.i = i;
	}
	@XmlElement(name="fn")
	public String getFn() {
		return fn;
	}
	public void setFn(String fn) {
		this.fn = fn;
	}
	@XmlElement(name="squad")
	public List<Squad> getSquad() {
		return squad;
	}
	public void setSquad(List<Squad> squad) {
		this.squad = squad;
	}
	@XmlElement(name="sn")
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	@XmlElement(name="logo")
	public Logo getLogo() {
		return logo;
	}
	public void setLogo(Logo logo) {
		this.logo = logo;
	}
	@XmlElement(name="small")
	public String getSmall() {
		return small;
	}
	public void setSmall(String small) {
		this.small = small;
	}
	
	
}
