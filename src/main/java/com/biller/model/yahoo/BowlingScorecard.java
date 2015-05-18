package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name="o")
public class BowlingScorecard {
	List<Player> t;
	@XmlElement(name="t")
	public List<Player> getT() {
		return t;
	}

	public void setT(List<Player> t) {
		this.t = t;
	}
	
}
