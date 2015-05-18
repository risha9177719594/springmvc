package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Team")
public class Team {
	String team;
	String teamid;
	String teamId;
	String teamName;
	String teamType;
	String teamCategory;
	List<Ranking> ranking;
	List<String> rank;
	List<Captain> captain;
	String id;
	String matchwon;
	@XmlAttribute(name="Team")
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	@XmlAttribute(name="teamid")
	public String getTeamid() {
		return teamid;
	}
	public void setTeamid(String teamid) {
		this.teamid = teamid;
	}
	@XmlAttribute(name="id")
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@XmlAttribute(name="matchwon")
	public String getMatchwon() {
		return matchwon;
	}
	public void setMatchwon(String matchwon) {
		this.matchwon = matchwon;
	}
	@XmlElement(name="TeamId")
	public String getTeamId() {
		return teamId;
	}
	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}
	@XmlElement(name="TeamName")
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	@XmlElement(name="TeamType")
	public String getTeamType() {
		return teamType;
	}
	public void setTeamType(String teamType) {
		this.teamType = teamType;
	}
	@XmlElement(name="TeamCategory")
	public String getTeamCategory() {
		return teamCategory;
	}
	public void setTeamCategory(String teamCategory) {
		this.teamCategory = teamCategory;
	}
	@XmlElement(name="Ranking")
	public List<Ranking> getRanking() {
		return ranking;
	}
	public void setRanking(List<Ranking> ranking) {
		this.ranking = ranking;
	}
	@XmlElement(name="Captain")
	public List<Captain> getCaptain() {
		return captain;
	}
	public void setCaptain(List<Captain> captain) {
		this.captain = captain;
	}
	@XmlElement(name="Ranking")
	public List<String> getRank() {
		return rank;
	}
	public void setRank(List<String> rank) {
		this.rank = rank;
	}
	
}
