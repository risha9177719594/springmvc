package com.biller.model.standing;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Team")
public class Team {
	
	String teamId;
	String name;
	String played;
	String won;
	String lost;
	String tied;
	String points;
	String noResult;
	String netRunRate;
	String groupName;
	String image;
	@XmlAttribute(name="teamId")
	public String getTeamId() {
		return teamId;
	}
	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}
	@XmlElement(name="Name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@XmlElement(name="Played")
	public String getPlayed() {
		return played;
	}
	public void setPlayed(String played) {
		this.played = played;
	}
	@XmlElement(name="Won")
	public String getWon() {
		return won;
	}
	public void setWon(String won) {
		this.won = won;
	}
	@XmlElement(name="Lost")
	public String getLost() {
		return lost;
	}
	public void setLost(String lost) {
		this.lost = lost;
	}
	@XmlElement(name="Tied")
	public String getTied() {
		return tied;
	}
	public void setTied(String tied) {
		this.tied = tied;
	}
	@XmlElement(name="Points")
	public String getPoints() {
		return points;
	}
	public void setPoints(String points) {
		this.points = points;
	}
	@XmlElement(name="NoResult")
	public String getNoResult() {
		return noResult;
	}
	public void setNoResult(String noResult) {
		this.noResult = noResult;
	}
	@XmlElement(name="NetRunRate")
	public String getNetRunRate() {
		return netRunRate;
	}
	public void setNetRunRate(String netRunRate) {
		this.netRunRate = netRunRate;
	}
	@XmlAttribute(name="groupName")
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
