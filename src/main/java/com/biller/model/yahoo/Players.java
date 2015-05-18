package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name="Players")
public class Players {
	
	List<Captain> player;

	@XmlElement(name="Player")
	public List<Captain> getPlayer() {
		return player;
	}

	public void setPlayer(List<Captain> player) {
		this.player = player;
	}
	
	

}
