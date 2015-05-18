package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="series")
public class Series {
String series_id;
String series_name;
String startDate;
String endDate;
String mlevel;
String mtype;
String seriesName;
String seriesId;
List<String> teamName;
List<Team> teams;
List<Match> match;
@XmlElement(name="series_id")
public String getSeries_id() {
	return series_id;
}
public void setSeries_id(String series_id) {
	this.series_id = series_id;
}
@XmlElement(name="series_name")
public String getSeries_name() {
	return series_name;
}
public void setSeries_name(String series_name) {
	this.series_name = series_name;
}
@XmlElement(name="StartDate")
public String getStartDate() {
	return startDate;
}
public void setStartDate(String startDate) {
	this.startDate = startDate;
}
@XmlElement(name="EndDate")
public String getEndDate() {
	return endDate;
}
public void setEndDate(String endDate) {
	this.endDate = endDate;
}
@XmlAttribute(name="mlevel")
public String getMlevel() {
	return mlevel;
}
public void setMlevel(String mlevel) {
	this.mlevel = mlevel;
}
@XmlAttribute(name="mtype")
public String getMtype() {
	return mtype;
}
public void setMtype(String mtype) {
	this.mtype = mtype;
}
public List<Team> getTeams() {
	return teams;
}
public void setTeams(List<Team> teams) {
	this.teams = teams;
}
@XmlElement(name="Match")
public List<Match> getMatch() {
	return match;
}
public void setMatch(List<Match> match) {
	this.match = match;
}
@XmlElement(name="SeriesName")
public String getSeriesName() {
	return seriesName;
}
public void setSeriesName(String seriesName) {
	this.seriesName = seriesName;
}
@XmlElement(name="Name")
public List<String> getTeamName() {
	return teamName;
}
public void setTeamName(List<String> teamName) {
	this.teamName = teamName;
}
@XmlElement(name="SeriesId")
public String getSeriesId() {
	return seriesId;
}
public void setSeriesId(String seriesId) {
	this.seriesId = seriesId;
}


}
