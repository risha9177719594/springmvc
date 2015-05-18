package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="t")
public class Player {
	
	String playerId;//i
	String isPlaying;//<a>1</a> <!-- Is batsman playing? 1=> out, 2=> striker, 3=> non striker --> 
	String outMode;//<c>c Gareth Hopkins b Tim Southee</c> <!-- HOW DID HE GET OUT? --> 
	String dismissalMode;//<dt>129</dt> <!-- *Dismissal Type : bowled|caught|lbw|run out -->
	String fielderId;//<fd>129</fd> <!-- *Fielder ID --> 
	String bowlerId;//<bd>129</bd> <!-- *Bowler ID -->
	String ballsFaced;//<b>129</b> <!-- Balls Faced -->
	String runs;//<r>54</r> <!-- Runs Scored --> <!-- Runs Given --> in case of bowler
	String strikeRate;//<sr>41.8604651</sr> <!-- Strike Rate --><!-- Economy Rate --> in case of bowler
	String six;//<six>0</six> <!-- Number of Sixes -->
	String fours;//<four>7</four> <!-- Number of Fours -->
	
	String isBowling;//<a>5</a> <!-- Bowler Status, 2=> Currently Bowling, 3=> has bowled but not currently 	bowling, 4=> not bowled yet, 5=> Bowling at other end --> 
	String overs;//<o>29</o> <!-- Overs -->
	String maidenOvers;//<mo>6</mo><!-- Maiden Overs -->
	String wickets;//<w>1</w> <!-- Wicket Taken -->
	String noBalls;//<nb>1</nb><!-- No Balls -->
	String wides;//<wd>0</wd><!-- Wides -->
	@XmlElement(name="i")
	public String getPlayerId() {
		return playerId;
	}
	public void setPlayerId(String playerId) {
		this.playerId = playerId;
	}
	@XmlElement(name="a")
	public String getIsPlaying() {
		return isPlaying;
	}
	public void setIsPlaying(String isPlaying) {
		this.isPlaying = isPlaying;
	}
	@XmlElement(name="c")
	public String getOutMode() {
		return outMode;
	}
	public void setOutMode(String outMode) {
		this.outMode = outMode;
	}
	@XmlElement(name="dt")
	public String getDismissalMode() {
		return dismissalMode;
	}
	public void setDismissalMode(String dismissalMode) {
		this.dismissalMode = dismissalMode;
	}
	@XmlElement(name="fd")
	public String getFielderId() {
		return fielderId;
	}
	public void setFielderId(String fielderId) {
		this.fielderId = fielderId;
	}
	@XmlElement(name="bd")
	public String getBowlerId() {
		return bowlerId;
	}
	public void setBowlerId(String bowlerId) {
		this.bowlerId = bowlerId;
	}
	@XmlElement(name="b")
	public String getBallsFaced() {
		return ballsFaced;
	}
	public void setBallsFaced(String ballsFaced) {
		this.ballsFaced = ballsFaced;
	}
	@XmlElement(name="r")
	public String getRuns() {
		return runs;
	}
	public void setRuns(String runs) {
		this.runs = runs;
	}
	@XmlElement(name="sr")
	public String getStrikeRate() {
		return strikeRate;
	}
	public void setStrikeRate(String strikeRate) {
		this.strikeRate = strikeRate;
	}
	@XmlElement(name="six")
	public String getSix() {
		return six;
	}
	public void setSix(String six) {
		this.six = six;
	}
	@XmlElement(name="four")
	public String getFours() {
		return fours;
	}
	public void setFours(String fours) {
		this.fours = fours;
	}
	@XmlElement(name="a")
	public String getIsBowling() {
		return isBowling;
	}
	public void setIsBowling(String isBowling) {
		this.isBowling = isBowling;
	}
	@XmlElement(name="o")
	public String getOvers() {
		return overs;
	}
	public void setOvers(String overs) {
		this.overs = overs;
	}
	@XmlElement(name="mo")
	public String getMaidenOvers() {
		return maidenOvers;
	}
	public void setMaidenOvers(String maidenOvers) {
		this.maidenOvers = maidenOvers;
	}
	@XmlElement(name="w")
	public String getWickets() {
		return wickets;
	}
	public void setWickets(String wickets) {
		this.wickets = wickets;
	}
	@XmlElement(name="nb")
	public String getNoBalls() {
		return noBalls;
	}
	public void setNoBalls(String noBalls) {
		this.noBalls = noBalls;
	}
	@XmlElement(name="wd")
	public String getWides() {
		return wides;
	}
	public void setWides(String wides) {
		this.wides = wides;
	}
	
}

