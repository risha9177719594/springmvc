package com.biller.model.standing;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import com.biller.model.Players;

@XmlRootElement(name="Sportsflash")
public class PlayerStandings {
	Header header;
	Players player;
	@XmlElement(name="Header")
	public Header getHeader() {
		return header;
	}
	public void setHeader(Header header) {
		this.header = header;
	}

	@XmlElement(name="Players")
	public Players getPlayer() {
		System.out.println("inside players : " + player.getPlayers().size());
		return player;
	}
	public void setPlayer(Players player) {
		this.player = player;
	}
	
	

}
