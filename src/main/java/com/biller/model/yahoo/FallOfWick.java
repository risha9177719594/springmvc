package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="fw")
public class FallOfWick{
	String wicketNo;//o
	String teamScore;//t
	String playerId;//id
	String overs;//ov
	@XmlElement(name="o")
	public String getWicketNo() {
		return wicketNo;
	}
	public void setWicketNo(String wicketNo) {
		this.wicketNo = wicketNo;
	}
	@XmlElement(name="t")
	public String getTeamScore() {
		return teamScore;
	}
	public void setTeamScore(String teamScore) {
		this.teamScore = teamScore;
	}
	@XmlElement(name="id")
	public String getPlayerId() {
		return playerId;
	}
	public void setPlayerId(String playerId) {
		this.playerId = playerId;
	}
	@XmlElement(name="ov")
	public String getOvers() {
		return overs;
	}
	public void setOvers(String overs) {
		this.overs = overs;
	}
	
	
}

