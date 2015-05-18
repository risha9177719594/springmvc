package com.biller.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Inning")
public class Inning {
	String battingTeamId;
	String inningId;
	String wickets;
	String runs;
	String overs;
	String isDeclared;
	@XmlAttribute(name="inningId")
	public String getInningId() {
		return inningId;
	}
	public void setInningId(String inningId) {
		this.inningId = inningId;
	}
	@XmlElement(name="Wickets")
	public String getWickets() {
		return wickets;
	}
	public void setWickets(String wickets) {
		this.wickets = wickets;
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
	@XmlElement(name="IsDeclared")
	public String getIsDeclared() {
		return isDeclared;
	}
	public void setIsDeclared(String isDeclared) {
		this.isDeclared = isDeclared;
	}
	@XmlAttribute(name="battingTeamId")
	public String getBattingTeamId() {
		return battingTeamId;
	}
	public void setBattingTeamId(String battingTeamId) {
		this.battingTeamId = battingTeamId;
	}

}
