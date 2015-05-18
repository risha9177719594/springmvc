package com.biller.model.wc;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.biller.model.wc.Results;

@XmlRootElement(name="query")
public class Query {
	
	Results results;
	@XmlElement(name="results")
	public Results getResults() {
		return results;
	}
	public void setResults(Results results) {
		this.results = results;
	}
	

}
