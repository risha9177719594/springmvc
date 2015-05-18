package com.biller.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Innings")
public class Innings {
	List<Inning> lI;

	@XmlElement(name="Inning")
	public List<Inning> getlI() {
		return lI;
	}

	public void setlI(List<Inning> lI) {
		this.lI = lI;
	}
	
	
}
