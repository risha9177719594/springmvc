package com.biller.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Striker")
public class Striker {
	
	String playerId;
	String firstName;
	String surName;
	String shortName;
	String runs;
	String balls;
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
	@XmlElement(name="Balls")
	public String getBalls() {
		return balls;
	}
	public void setBalls(String balls) {
		this.balls = balls;
	}
	
	
}

