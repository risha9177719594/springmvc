package com.biller.model.standing;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Teams")
public class Teams {
	List<Team> lT;
	@XmlElement(name="Team")
	public List<Team> getlT() {
		return lT;
	}

	public void setlT(List<Team> lT) {
		this.lT = lT;
	}
}
