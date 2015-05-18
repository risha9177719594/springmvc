package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="toss")
public class Toss{
	String winTeam;//win
	String isBatting;//bat
	@XmlElement(name="win")
	public String getWinTeam() {
		return winTeam;
	}
	public void setWinTeam(String winTeam) {
		this.winTeam = winTeam;
	}
	@XmlElement(name="bat")
	public String getIsBatting() {
		return isBatting;
	}
	public void setIsBatting(String isBatting) {
		this.isBatting = isBatting;
	}
	
}