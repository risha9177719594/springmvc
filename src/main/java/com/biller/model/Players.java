package com.biller.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Players")
public class Players {
	List<Payer> players;
	@XmlElement(name="Player")
	public List<Payer> getPlayers() {
		return players;
	}

	public void setPlayers(List<Payer> players) {
		this.players = players;
	}

}
