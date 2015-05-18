package com.biller.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Batsmen")
public class Batsmen {
	Striker Striker;
	NonStriker nonStriker;
	@XmlElement(name="Striker")
	public Striker getStriker() {
		return Striker;
	}
	public void setStriker(Striker striker) {
		Striker = striker;
	}
	@XmlElement(name="NonStriker")
	public NonStriker getNonStriker() {
		return nonStriker;
	}
	public void setNonStriker(NonStriker nonStriker) {
		this.nonStriker = nonStriker;
	}
	
	
}
