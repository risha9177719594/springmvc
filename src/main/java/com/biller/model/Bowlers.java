package com.biller.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Bowlers")
public class Bowlers {
	CurrentBowler currentBowler;
	@XmlElement(name="CurrentBowler")
	public CurrentBowler getCurrentBowler() {
		return currentBowler;
	}

	public void setCurrentBowler(CurrentBowler currentBowler) {
		this.currentBowler = currentBowler;
	}
	
}
