package com.biller.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name="Player")
public class Payer {
	String name;
	String notout;
	String hundred;
	String fifty;
	String ducks;
	String run;
	String ballFaced;
	String highScore;
	String average;
	String strikeRate;
	String payerId;
	String teamId;
	String team;
	String match;
	String inning;
	boolean isWicketKeeper;
	boolean isCaptain;
	String ballBowled;
	String maiden;
	String wicket;
	String economy;
	String bestBowling;
	
	String stump;
	String runOut;
	@XmlAttribute(name="payerId")
	public String getPayerId() {
		return payerId;
	}
	public void setPayerId(String payerId) {
		this.payerId = payerId;
	}
	@XmlAttribute(name="teamId")
	public String getTeamId() {
		return teamId;
	}
	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}
	@XmlAttribute(name="isWicketKeeper")
	public boolean getIsWicketKeeper() {
		return isWicketKeeper;
	}
	public void setIsWicketKeeper(boolean isWicketKeeper) {
		this.isWicketKeeper = isWicketKeeper;
	}
	@XmlAttribute(name="isCaptain")
	public boolean getIsCaptain() {
		return isCaptain;
	}
	public void setIsCaptain(boolean isCaptain) {
		this.isCaptain = isCaptain;
	}
	@XmlElement(name="Name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@XmlElement(name="NotOut")
	public String getNotout() {
		return notout;
	}
	public void setNotout(String notout) {
		this.notout = notout;
	}
	@XmlElement(name="Hundred")
	public String getHundred() {
		return hundred;
	}
	public void setHundred(String hundred) {
		this.hundred = hundred;
	}
	@XmlElement(name="Fifty")
	public String getFifty() {
		return fifty;
	}
	public void setFifty(String fifty) {
		this.fifty = fifty;
	}
	@XmlElement(name="Ducks")
	public String getDucks() {
		return ducks;
	}
	public void setDucks(String ducks) {
		this.ducks = ducks;
	}
	@XmlElement(name="Run")
	public String getRun() {
		return run;
	}
	public void setRun(String run) {
		this.run = run;
	}
	@XmlElement(name="BallFaced")
	public String getBallFaced() {
		return ballFaced;
	}
	public void setBallFaced(String ballFaced) {
		this.ballFaced = ballFaced;
	}
	@XmlElement(name="HighScore")
	public String getHighScore() {
		return highScore;
	}
	public void setHighScore(String highScore) {
		this.highScore = highScore;
	}
	@XmlElement(name="Average")
	public String getAverage() {
		return average;
	}
	public void setAverage(String average) {
		this.average = average;
	}
	@XmlElement(name="StrikeRate")
	public String getStrikeRate() {
		return strikeRate;
	}
	public void setStrikeRate(String strikeRate) {
		this.strikeRate = strikeRate;
	}
	public void setWicketKeeper(boolean isWicketKeeper) {
		this.isWicketKeeper = isWicketKeeper;
	}
	public void setCaptain(boolean isCaptain) {
		this.isCaptain = isCaptain;
	}
	@XmlElement(name="Team")
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	@XmlElement(name="Match")
	public String getMatch() {
		return match;
	}
	public void setMatch(String match) {
		this.match = match;
	}
	@XmlElement(name="Inning")
	public String getInning() {
		return inning;
	}
	public void setInning(String inning) {
		this.inning = inning;
	}
	@XmlElement(name="BallBowled")
	public String getBallBowled() {
		return ballBowled;
	}
	public void setBallBowled(String ballBowled) {
		this.ballBowled = ballBowled;
	}
	@XmlElement(name="Maiden")
	public String getMaiden() {
		return maiden;
	}
	public void setMaiden(String maiden) {
		this.maiden = maiden;
	}
	@XmlElement(name="Wicket")
	public String getWicket() {
		return wicket;
	}
	public void setWicket(String wicket) {
		this.wicket = wicket;
	}
	@XmlElement(name="Economy")
	public String getEconomy() {
		return economy;
	}
	public void setEconomy(String economy) {
		this.economy = economy;
	}
	@XmlElement(name="BestBowling")
	public String getBestBowling() {
		return bestBowling;
	}
	public void setBestBowling(String bestBowling) {
		this.bestBowling = bestBowling;
	}
	@XmlElement(name="Stump")
	public String getStump() {
		return stump;
	}
	public void setStump(String stump) {
		this.stump = stump;
	}
	@XmlElement(name="RunOut")
	public String getRunOut() {
		return runOut;
	}
	public void setRunOut(String runOut) {
		this.runOut = runOut;
	}
	
	

}
