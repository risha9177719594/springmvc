package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Scorecard")
public class PastIngs {
	Summary summary;//s
	DetailedScore detailedScore;//d
	@XmlElement(name="s")
	public Summary getSummary() {
		return summary;
	}
	public void setSummary(Summary summary) {
		this.summary = summary;
	}
	@XmlElement(name="d")
	public DetailedScore getDetailedScore() {
		return detailedScore;
	}
	public void setDetailedScore(DetailedScore detailedScore) {
		this.detailedScore = detailedScore;
	}
	
	

}
