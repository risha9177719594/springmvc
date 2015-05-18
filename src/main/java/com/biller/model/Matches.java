package com.biller.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Matches")
public class Matches {
	
	List<Match> mat;
	@XmlElement(name="Match")
	public List<Match> getMat() {
		return mat;
	}

	public void setMat(List<Match> mat) {
		this.mat = mat;
	}
	

}
