package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="logo")
public class Logo {
	String std;
	@XmlElement(name="std")
	public String getStd() {
		return std;
	}

	public void setStd(String std) {
		this.std = std;
	}
	
}

