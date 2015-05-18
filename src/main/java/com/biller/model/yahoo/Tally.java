package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Tally")
public class Tally {
	String mtype;
	String teamid_against;
	String name;
	String wins;
	String losses;
	String ties;
	String noResults;
	String homeWins;
	String awayWins;
	String played;
	InnSum highestInningSummary;
	InnSum lowestInningSummary;
	InnSum highestChasedSuccessfully;
	Top bowling;
	Top batting;
	Partnership partnerShip;
	Prolific prolific;
	List<Match> match;
	
	@XmlAttribute(name="mtype")
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	@XmlAttribute(name="teamid_against")
	public String getTeamid_against() {
		return teamid_against;
	}
	public void setTeamid_against(String teamid_against) {
		this.teamid_against = teamid_against;
	}
	@XmlElement(name="Name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		name = name;
	}
	@XmlElement(name="Wins")
	public String getWins() {
		return wins;
	}
	public void setWins(String wins) {
		wins = wins;
	}
	@XmlElement(name="Losses")
	public String getLosses() {
		return losses;
	}
	public void setLosses(String losses) {
		losses = losses;
	}
	@XmlElement(name="Ties")
	public String getTies() {
		return ties;
	}
	public void setTies(String ties) {
		ties = ties;
	}
	@XmlElement(name="NoResults")
	public String getNoResults() {
		return noResults;
	}
	public void setNoResults(String noResults) {
		noResults = noResults;
	}
	@XmlElement(name="HomeWins")
	public String getHomeWins() {
		return homeWins;
	}
	public void setHomeWins(String homeWins) {
		homeWins = homeWins;
	}
	@XmlElement(name="AwayWins")
	public String getAwayWins() {
		return awayWins;
	}
	public void setAwayWins(String awayWins) {
		awayWins = awayWins;
	}
	@XmlElement(name="Played")
	public String getPlayed() {
		return played;
	}
	public void setPlayed(String played) {
		played = played;
	}
	//@XmlElement(name="HighestInningSummary")
	public InnSum getHighestInningSummary() {
		return highestInningSummary;
	}
	public void setHighestInningSummary(InnSum highestInningSummary) {
		highestInningSummary = highestInningSummary;
	}
	//@XmlElement(name="LowestInningSummary")
	public InnSum getLowestInningSummary() {
		return lowestInningSummary;
	}
	public void setLowestInningSummary(InnSum lowestInningSummary) {
		lowestInningSummary = lowestInningSummary;
	}
	//@XmlElement(name="HighestChasedSuccessfully")
	public InnSum getHighestChasedSuccessfully() {
		return highestChasedSuccessfully;
	}
	public void setHighestChasedSuccessfully(InnSum highestChasedSuccessfully) {
		highestChasedSuccessfully = highestChasedSuccessfully;
	}
	//@XmlElement(name="Bowling")
	public Top getBowling() {
		return bowling;
	}
	public void setBowling(Top bowling) {
		bowling = bowling;
	}
	//@XmlElement(name="Batting")
	public Top getBatting() {
		return batting;
	}
	public void setBatting(Top batting) {
		batting = batting;
	}
	//@XmlElement(name="PartnerShip")
	public Partnership getPartnerShip() {
		return partnerShip;
	}
	public void setPartnerShip(Partnership partnerShip) {
		this.partnerShip = partnerShip;
	}
	//@XmlElement(name="Prolific")
	public Prolific getProlific() {
		return prolific;
	}
	public void setProlific(Prolific prolific) {
		prolific = prolific;
	}
	//@XmlElement(name="Recentmatches")
	public List<Match> getMatch() {
		return match;
	}
	public void setMatch(List<Match> match) {
		match = match;
	}
	
	
}
