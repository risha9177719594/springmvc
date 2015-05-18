package com.biller.model.stats;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name="Sportsflash",namespace = "http://www.sportsflash.com.au/Schema/")
public class Stats {
	Header header;
	List<Players> players;
	
	@XmlElement(name="Header")
	public Header getHeader() {
		return header;
	}
	public void setHeader(Header header) {
		this.header = header;
	}
	@XmlElement(name="Players")
	public List<Players> getPlayers() {
		return players;
	}
	public void setPlayers(List<Players> players) {
		this.players = players;
	}
	
	
}