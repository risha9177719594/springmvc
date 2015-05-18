package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name="PlayerProfile")
public class PlayerProfile {
	String personid;
	
	String profile;
	String batting;
	String bowling;
	String role;
	List<String> team;
	PersonalDetails personalDetails;
	//private Debut Debut;
	private String mOM;
	@XmlAttribute(name="personid")
	public String getPersonid() {
		return personid;
	}
	public void setPersonid(String personid) {
		this.personid = personid;
	}
	
	@XmlElement(name="Profile") 
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	@XmlElement(name="Batting") 
	public String getBatting() {
		return batting;
	}
	public void setBatting(String batting) {
		this.batting = batting;
	}
	@XmlElement(name="Bowling") 
	public String getBowling() {
		return bowling;
	}
	public void setBowling(String bowling) {
		this.bowling = bowling;
	}
	@XmlElement(name="Role") 
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@XmlElement(name="Team") 
	public List<String> getTeam() {
		return team;
	}
	public void setTeam(List<String> team) {
		this.team = team;
	}
	@XmlElement(name="MOM") 
	public String getMOM() {
		return mOM;
	}
	public void setMOM(String mOM) {
		this.mOM = mOM;
	}
	@XmlElement(name="PersonalDetails") 
	public PersonalDetails getPersonalDetails() {
		return personalDetails;
	}
	public void setPersonalDetails(PersonalDetails personalDetails) {
		this.personalDetails = personalDetails;
	}

}
