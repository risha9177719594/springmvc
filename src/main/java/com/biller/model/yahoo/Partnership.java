package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="cp")
public class Partnership{
	String cp;
	String bls;
	String TotalRunScored;
	String TotalBallsFaced;
	String Wicket;
	//List<Batting> Batting;
	@XmlElement(name="cp")
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	@XmlElement(name="bls")
	public String getBls() {
		return bls;
	}
	public void setBls(String bls) {
		this.bls = bls;
	}
	
}
