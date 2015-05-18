package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="be")
public class BowlingEnd{
	String activeEnd;//<a>Pavilion End</a> <!-- *Active End --> 
	String otherEnd;//<i>Stand End</i> <!-- *Other End -->
	@XmlElement(name="a")
	public String getActiveEnd() {
		return activeEnd;
	}
	public void setActiveEnd(String activeEnd) {
		this.activeEnd = activeEnd;
	}
	@XmlElement(name="i")
	public String getOtherEnd() {
		return otherEnd;
	}
	public void setOtherEnd(String otherEnd) {
		this.otherEnd = otherEnd;
	}
	
}
