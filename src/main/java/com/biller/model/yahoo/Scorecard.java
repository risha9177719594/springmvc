package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Scorecard")
public class Scorecard {
	Series series;
	String mid;
	String ms;
	Place place;
	
	String matchNumber;//mn
	List<Teams> teams;
	List<PastIngs> past_ings;
	Toss toss;
	//pastIngs
	@XmlElement(name="series")
	public Series getSeries() {
		return series;
	}
	public void setSeries(Series series) {
		this.series = series;
	}
	@XmlElement(name="teams")
	public List<Teams> getTeams() {
		return teams;
	}
	public void setTeams(List<Teams> teams) {
		this.teams = teams;
	}
	@XmlElement(name="mid")
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	@XmlElement(name="ms")
	public String getMs() {
		return ms;
	}
	public void setMs(String ms) {
		this.ms = ms;
	}
	@XmlElement(name="place")
	public Place getPlace() {
		return place;
	}
	public void setPlace(Place place) {
		this.place = place;
	}
	@XmlElement(name="mn")
	public String getMatchNumber() {
		return matchNumber;
	}
	public void setMatchNumber(String matchNumber) {
		this.matchNumber = matchNumber;
	}
	@XmlElement(name="past_ings")
	public List<PastIngs> getPast_ings() {
		return past_ings;
	}
	public void setPast_ings(List<PastIngs> past_ings) {
		this.past_ings = past_ings;
	}
	@XmlElement(name="toss")
	public Toss getToss() {
		return toss;
	}
	public void setToss(Toss toss) {
		this.toss = toss;
	}		
	

}
