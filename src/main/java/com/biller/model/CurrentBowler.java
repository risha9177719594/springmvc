package com.biller.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="CurrentBowler")
public class CurrentBowler {
	String playerId;
	String firstName;
	String surName;
	String shortName;
	String runs;
	String overs;
	String wickets;
	@XmlAttribute(name="playerId")
	public String getPlayerId() {
		return playerId;
	}
	public void setPlayerId(String playerId) {
		this.playerId = playerId;
	}
	@XmlElement(name="FirstName")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@XmlElement(name="SurName")
	public String getSurName() {
		return surName;
	}
	public void setSurName(String surName) {
		this.surName = surName;
	}
	@XmlElement(name="ShortName")
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}
	@XmlElement(name="Runs")
	public String getRuns() {
		return runs;
	}
	public void setRuns(String runs) {
		this.runs = runs;
	}
	@XmlElement(name="Overs")
	public String getOvers() {
		return overs;
	}
	public void setOvers(String overs) {
		this.overs = overs;
	}
	@XmlElement(name="Wickets")
	public String getWickets() {
		return wickets;
	}
	public void setWickets(String wickets) {
		this.wickets = wickets;
	}
	
}
