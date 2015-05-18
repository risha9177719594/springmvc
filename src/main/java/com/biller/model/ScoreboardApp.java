package com.biller.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="ScoreboardApp")
public class ScoreboardApp {
	
	List<Matches> ms;
	@XmlElement(name="Matches")
	public List<Matches> getMs() {
		return ms;
	}

	public void setMs(List<Matches> ms) {
		this.ms = ms;
	}
	
}
