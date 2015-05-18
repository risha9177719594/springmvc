package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="TeamProfile")
public class TeamProfile {
	String transId;
	String transType;
	String teamId;
	String teamName;
	String shortName;
	String teamType;
	String teamCategory;
	String description;
	String teamLogoPath;
	String teamLogoSmallPath;
	String teamFlagPath;
	String teamSmallFlagPath;
	List<Ranking> ranking;
	List<Captain> captain;
	Players players;
	Captain coach;
	List<Tally> tally;
	List<Captain> player;
	List<PlayerProfile> pf;
	
	@XmlElement(name="TransId")
	public String getTransId() {
		return transId;
	}
	public void setTransId(String transId) {
		this.transId = transId;
	}
	@XmlElement(name="TransType")
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
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
	@XmlElement(name="ShortName")
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
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
	@XmlElement(name="Description")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@XmlElement(name="TeamLogoPath")
	public String getTeamLogoPath() {
		return teamLogoPath;
	}
	public void setTeamLogoPath(String teamLogoPath) {
		this.teamLogoPath = teamLogoPath;
	}
	@XmlElement(name="TeamLogoSmallPath")
	public String getTeamLogoSmallPath() {
		return teamLogoSmallPath;
	}
	public void setTeamLogoSmallPath(String teamLogoSmallPath) {
		this.teamLogoSmallPath = teamLogoSmallPath;
	}
	@XmlElement(name="TeamFlagPath")
	public String getTeamFlagPath() {
		return teamFlagPath;
	}
	public void setTeamFlagPath(String teamFlagPath) {
		this.teamFlagPath = teamFlagPath;
	}
	@XmlElement(name="TeamSmallFlagPath")
	public String getTeamSmallFlagPath() {
		return teamSmallFlagPath;
	}
	public void setTeamSmallFlagPath(String teamSmallFlagPath) {
		this.teamSmallFlagPath = teamSmallFlagPath;
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
	@XmlElement(name="Coach")
	public Captain getCoach() {
		return coach;
	}
	public void setCoach(Captain coach) {
		this.coach = coach;
	}
	@XmlElement(name="Tally")
	public List<Tally> getTally() {
		return tally;
	}
	public void setTally(List<Tally> tally) {
		this.tally = tally;
	}
	public List<Captain> getPlayer() {
		return player;
	}
	public void setPlayer(List<Captain> player) {
		this.player = player;
	}
	public List<PlayerProfile> getPf() {
		return pf;
	}
	public void setPf(List<PlayerProfile> pf) {
		this.pf = pf;
	}
	@XmlElement(name="Players")
	public Players getPlayers() {
		return players;
	}
	public void setPlayers(Players players) {
		this.players = players;
	}
	
	

}
