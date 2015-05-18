package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.biller.model.news.Item;

@XmlRootElement(name="results")
public class Results {
	Scorecard scorecard;
	List<Match> match;
	List<Item> item;
	List<Over> over;
	List<Team> team;
	List<Series> series;
	TeamProfile teamProfile;
	List<PlayerProfile> playerProfile;
	List<Scorecard> scorecardList;
	@XmlElement(name="Match")
	public List<Match> getMatch() {
		return match;
	}

	public void setMatch(List<Match> match) {
		this.match = match;
	}
	//@XmlElement(name="Scorecard")
	public Scorecard getScorecard() {
		return scorecard;
	}

	public void setScorecard(Scorecard scorecard) {
		this.scorecard = scorecard;
	}
	@XmlElement(name="item")
	public List<Item> getItem() {
		return item;
	}

	public void setItem(List<Item> item) {
		this.item = item;
	}
	@XmlElement(name="Over")
	public List<Over> getOver() {
		return over;
	}

	public void setOver(List<Over> over) {
		this.over = over;
	}
	@XmlElement(name="Team")
	public List<Team> getTeam() {
		return team;
	}

	public void setTeam(List<Team> team) {
		this.team = team;
	}
	@XmlElement(name="Series")
	public List<Series> getSeries() {
		return series;
	}

	public void setSeries(List<Series> series) {
		this.series = series;
	}
	@XmlElement(name="TeamProfile") 
	public TeamProfile getTeamProfile() {
		return teamProfile;
	}

	public void setTeamProfile(TeamProfile teamProfile) {
		this.teamProfile = teamProfile;
	}
	@XmlElement(name="PlayerProfile") 
	public List<PlayerProfile> getPlayerProfile() {
		return playerProfile;
	}

	public void setPlayerProfile(List<PlayerProfile> playerProfile) {
		this.playerProfile = playerProfile;
	}
	@XmlElement(name="Scorecard")
	public List<Scorecard> getScorecardList() {
		return scorecardList;
	}

	public void setScorecardList(List<Scorecard> scorecardList) {
		this.scorecardList = scorecardList;
	}
	
	
}
