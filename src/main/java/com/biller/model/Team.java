package com.biller.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name="Team")
public class Team {
	String teamId;
	String isHome;
	String winning;
	String shortName;
	String longName;
	@XmlAttribute(name="teamId")
	public String getTeamId() {
		return teamId;
	}
	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}
	@XmlElement(name="IsHome")
	public String getIsHome() {
		return isHome;
	}
	public void setIsHome(String isHome) {
		this.isHome = isHome;
	}
	@XmlElement(name="Winning")
	public String getWinning() {
		return winning;
	}
	public void setWinning(String winning) {
		this.winning = winning;
	}
	@XmlElement(name="ShortName")
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}
	@XmlElement(name="LongName")
	public String getLongName() {
		return longName;
	}
	public void setLongName(String longName) {
		this.longName = longName;
	}
	
	
}
