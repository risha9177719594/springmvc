package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="a")
public class Summary {
	String matchType;//m
	String inningId;//i
	String matchDay;//dm
	String sessionNumber;//sn
	String innStatus;//d
	BatSummary batSummary;//a
	Result result;	
	List<FallOfWick> fw;
	@XmlElement(name="m")
	public String getMatchType() {
		return matchType;
	}

	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}
	@XmlElement(name="i")
	public String getInningId() {
		return inningId;
	}

	public void setInningId(String inningId) {
		this.inningId = inningId;
	}
	@XmlElement(name="dm")
	public String getMatchDay() {
		return matchDay;
	}

	public void setMatchDay(String matchDay) {
		this.matchDay = matchDay;
	}
	@XmlElement(name="sn")
	public String getSessionNumber() {
		return sessionNumber;
	}

	public void setSessionNumber(String sessionNumber) {
		this.sessionNumber = sessionNumber;
	}
	@XmlElement(name="d")
	public String getInnStatus() {
		return innStatus;
	}

	public void setInnStatus(String innStatus) {
		this.innStatus = innStatus;
	}
	@XmlElement(name="a")
	public BatSummary getBatSummary() {
		return batSummary;
	}

	public void setBatSummary(BatSummary batSummary) {
		this.batSummary = batSummary;
	}
	@XmlElement(name="result")
	public Result getResult() {
		return result;
	}

	public void setResult(Result result) {
		this.result = result;
	}
	@XmlElement(name="fw")
	public List<FallOfWick> getFw() {
		return fw;
	}

	public void setFw(List<FallOfWick> fw) {
		this.fw = fw;
	}
	
	
	//inner class
	
	
}

