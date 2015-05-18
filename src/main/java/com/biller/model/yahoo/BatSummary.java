package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="a")
public class BatSummary{
	String followOn;//fo
	String powerPlay;//pp
	String batTeamId;//i
	String currRR;//cr
	String runs;//r
	String overs;//o
	String wikets;//w
	String byes;//b
	String legByes;//lb
	String wides;//wd
	String noBalls;//nb
	String penalty;//pt
	String isDeclared;//l
	String reqRR;//rr
	String reqRuns;//ru
	String remOvers;//ro
	Partnership curPart;//cp
	String trailBy;//tl
	@XmlElement(name="fo")
	public String getFollowOn() {
		return followOn;
	}
	public void setFollowOn(String followOn) {
		this.followOn = followOn;
	}
	@XmlElement(name="pp")
	public String getPowerPlay() {
		return powerPlay;
	}
	public void setPowerPlay(String powerPlay) {
		this.powerPlay = powerPlay;
	}
	@XmlElement(name="i")
	public String getBatTeamId() {
		return batTeamId;
	}
	public void setBatTeamId(String batTeamId) {
		this.batTeamId = batTeamId;
	}
	@XmlElement(name="cr")
	public String getCurrRR() {
		return currRR;
	}
	public void setCurrRR(String currRR) {
		this.currRR = currRR;
	}
	@XmlElement(name="r")
	public String getRuns() {
		return runs;
	}
	public void setRuns(String runs) {
		this.runs = runs;
	}
	@XmlElement(name="o")
	public String getOvers() {
		return overs;
	}
	public void setOvers(String overs) {
		this.overs = overs;
	}
	@XmlElement(name="w")
	public String getWikets() {
		return wikets;
	}
	public void setWikets(String wikets) {
		this.wikets = wikets;
	}
	@XmlElement(name="b")
	public String getByes() {
		return byes;
	}
	public void setByes(String byes) {
		this.byes = byes;
	}
	@XmlElement(name="lb")
	public String getLegByes() {
		return legByes;
	}
	public void setLegByes(String legByes) {
		this.legByes = legByes;
	}
	@XmlElement(name="wd")
	public String getWides() {
		return wides;
	}
	public void setWides(String wides) {
		this.wides = wides;
	}
	@XmlElement(name="nb")
	public String getNoBalls() {
		return noBalls;
	}
	public void setNoBalls(String noBalls) {
		this.noBalls = noBalls;
	}
	@XmlElement(name="pt")
	public String getPenalty() {
		return penalty;
	}
	public void setPenalty(String penalty) {
		this.penalty = penalty;
	}
	@XmlElement(name="l")
	public String getIsDeclared() {
		return isDeclared;
	}
	public void setIsDeclared(String isDeclared) {
		this.isDeclared = isDeclared;
	}
	@XmlElement(name="rr")
	public String getReqRR() {
		return reqRR;
	}
	public void setReqRR(String reqRR) {
		this.reqRR = reqRR;
	}
	@XmlElement(name="ru")
	public String getReqRuns() {
		return reqRuns;
	}
	public void setReqRuns(String reqRuns) {
		this.reqRuns = reqRuns;
	}
	@XmlElement(name="ro")
	public String getRemOvers() {
		return remOvers;
	}
	public void setRemOvers(String remOvers) {
		this.remOvers = remOvers;
	}
	@XmlElement(name="cp")
	public Partnership getCurPart() {
		return curPart;
	}
	public void setCurPart(Partnership curPart) {
		this.curPart = curPart;
	}
	@XmlElement(name="tl")
	public String getTrailBy() {
		return trailBy;
	}
	public void setTrailBy(String trailBy) {
		this.trailBy = trailBy;
	}
	
}

