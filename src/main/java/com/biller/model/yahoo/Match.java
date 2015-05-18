package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Match")
public class Match {
	String matchid;
	String mtype;
	String series_id;
	String series_name;
	String status;
	String venue;
	String startDate;
	List<Team> team;
	Result result;
	String matchNo;
	String group;
	String stage;	
	String MatchTimeSpan;
	@XmlAttribute(name="matchid")
	public String getMatchid() {
		return matchid;
	}
	public void setMatchid(String matchid) {
		this.matchid = matchid;
	}
	@XmlAttribute(name="mtype")
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	@XmlAttribute(name="series_id")
	public String getSeries_id() {
		return series_id;
	}
	public void setSeries_id(String series_id) {
		this.series_id = series_id;
	}
	@XmlAttribute(name="series_name")
	public String getSeries_name() {
		return series_name;
	}
	public void setSeries_name(String series_name) {
		this.series_name = series_name;
	}
	@XmlAttribute(name="status")
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@XmlElement(name="Venue")
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	@XmlElement(name="StartDate")
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	@XmlElement(name="Team")
	public List<Team> getTeam() {
		return team;
	}
	public void setTeam(List<Team> team) {
		this.team = team;
	}
	@XmlElement(name="Result")
	public Result getResult() {
		return result;
	}
	public void setResult(Result result) {
		this.result = result;
	}
	@XmlElement(name="MatchNo")
	public String getMatchNo() {
		return matchNo;
	}
	public void setMatchNo(String matchNo) {
		this.matchNo = matchNo;
	}
	@XmlAttribute(name="group")
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	@XmlAttribute(name="stage")
	public String getStage() {
		return stage;
	}
	public void setStage(String stage) {
		this.stage = stage;
	}
	@XmlElement(name="MatchTimeSpan")
	public String getMatchTimeSpan() {
		return MatchTimeSpan;
	}
	public void setMatchTimeSpan(String matchTimeSpan) {
		MatchTimeSpan = matchTimeSpan;
	}
	
	
}
