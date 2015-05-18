package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name="Result")
public class Result {
	String by;
	String how;
	String date;
	List<Team> team;
	@XmlAttribute(name="by")
	public String getBy() {
		return by;
	}
	public void setBy(String by) {
		this.by = by;
	}
	@XmlAttribute(name="how")
	public String getHow() {
		return how;
	}
	public void setHow(String how) {
		this.how = how;
	}
	@XmlElement(name="Date")
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@XmlElement(name="Team")
	public List<Team> getTeam() {
		return team;
	}
	public void setTeam(List<Team> team) {
		this.team = team;
	}
	
	
}
