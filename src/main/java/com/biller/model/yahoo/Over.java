package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Over")
public class Over {
	
	String num;
	List<Ball> ball;
	@XmlAttribute(name="num")
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	@XmlElement(name="Ball")
	public List<Ball> getBall() {
		return ball;
	}
	public void setBall(List<Ball> ball) {
		this.ball = ball;
	}
	

}
