package com.biller.model.standing;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name="Sportsflash")
public class Standings {
	Header header;
	Teams teams;
	@XmlElement(name="Header")
	public Header getHeader() {
		return header;
	}
	public void setHeader(Header header) {
		this.header = header;
	}
	@XmlElement(name="Teams")
	public Teams getTeams() {
		return teams;
	}
	public void setTeams(Teams teams) {
		this.teams = teams;
	}
	
	
}
