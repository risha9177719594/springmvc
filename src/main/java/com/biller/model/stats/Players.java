package com.biller.model.stats;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.biller.model.Payer;

@XmlRootElement(name="Players")
public class Players {
	List<Payer> player;
	@XmlElement(name="Player")
	public List<Payer> getPlayer() {
		return player;
	}

	public void setPlayer(List<Payer> players) {
		this.player = players;
	}
	
	

}
