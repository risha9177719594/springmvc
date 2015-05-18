package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="d")
public class DetailedScore {
	BattingScorecard battingScorecard;//a
	BowlingScorecard bowlingScorecard;//o
	BowlingEnd bowlingEnd;//<be> <!-- *Bowling End --> 
	@XmlElement(name="a")
	public BattingScorecard getBattingScorecard() {
		return battingScorecard;
	}

	public void setBattingScorecard(BattingScorecard battingScorecard) {
		this.battingScorecard = battingScorecard;
	}
	@XmlElement(name="o")
	public BowlingScorecard getBowlingScorecard() {
		return bowlingScorecard;
	}

	public void setBowlingScorecard(BowlingScorecard bowlingScorecard) {
		this.bowlingScorecard = bowlingScorecard;
	}
	@XmlElement(name="be")
	public BowlingEnd getBowlingEnd() {
		return bowlingEnd;
	}

	public void setBowlingEnd(BowlingEnd bowlingEnd) {
		this.bowlingEnd = bowlingEnd;
	}
	

}
