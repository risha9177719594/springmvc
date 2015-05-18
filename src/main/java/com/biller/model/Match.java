package com.biller.model;


import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Match")
public class Match {
	String matchId;
	String priority;
	String matchName;
	String startDate;
	String tour;
	String tourId;
	String series;
	String seriesId;
	String venue;
	String venueId;
	String status;
	Teams teams;
	Innings innings;
	Batsmen batsmen;
	Bowlers bowlers;
	String resultText;
	@XmlAttribute(name="matchId")
	public String getMatchId() {
		return matchId;
	}
	public void setMatchId(String matchId) {
		this.matchId = matchId;
	}
	@XmlAttribute(name="priority")
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	@XmlElement(name="Name")
	public String getMatchName() {
		return matchName;
	}
	public void setMatchName(String matchName) {
		this.matchName = matchName;
	}
	@XmlElement(name="EndDate")
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	@XmlElement(name="Tour")
	public String getTour() {
		return tour;
	}
	public void setTour(String tour) {
		this.tour = tour;
	}
	@XmlAttribute(name="tourId")
	public String getTourId() {
		return tourId;
	}
	public void setTourId(String tourId) {
		this.tourId = tourId;
	}
	@XmlElement(name="Series")
	public String getSeries() {
		return series;
	}
	public void setSeries(String series) {
		this.series = series;
	}
	@XmlAttribute(name="seriesId")
	public String getSeriesId() {
		return seriesId;
	}
	public void setSeriesId(String seriesId) {
		this.seriesId = seriesId;
	}
	@XmlElement(name="Venue")
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	@XmlAttribute(name="venueId")
	public String getVenueId() {
		return venueId;
	}
	public void setVenueId(String venueId) {
		this.venueId = venueId;
	}
	@XmlElement(name="Status")
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@XmlElement(name="Teams")
	public Teams getTeams() {
		return teams;
	}
	public void setTeams(Teams teams) {
		this.teams = teams;
	}
	@XmlElement(name="Innings")
	public Innings getInnings() {
		return innings;
	}
	public void setInnings(Innings innings) {
		this.innings = innings;
	}
	@XmlElement(name="ResultText")
	public String getResultText() {
		return resultText;
	}
	public void setResultText(String resultText) {
		this.resultText = resultText;
	}
	@XmlElement(name="Batsmen")
	public Batsmen getBatsmen() {
		return batsmen;
	}
	public void setBatsmen(Batsmen batsmen) {
		this.batsmen = batsmen;
	}
	@XmlElement(name="Bowlers")
	public Bowlers getBowlers() {
		return bowlers;
	}
	public void setBowlers(Bowlers bowlers) {
		this.bowlers = bowlers;
	}
	
	
}
