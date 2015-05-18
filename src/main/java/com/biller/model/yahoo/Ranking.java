package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Ranking")
public class Ranking {
	
	String mtype;
	String ranker;
	String trend;
	String rank;
	@XmlAttribute(name="mtype")
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	@XmlAttribute(name="ranker")
	public String getRanker() {
		return ranker;
	}
	public void setRanker(String ranker) {
		this.ranker = ranker;
	}
	@XmlAttribute(name="trend")
	public String getTrend() {
		return trend;
	}
	public void setTrend(String trend) {
		this.trend = trend;
	}
	@XmlElement(name="Ranking")
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	
	

}
