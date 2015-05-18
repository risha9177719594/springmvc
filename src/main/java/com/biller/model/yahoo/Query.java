package com.biller.model.yahoo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="query")
public class Query {
	
	Diagnostics diagnostics;
	Results results;
	//@XmlElement(name="Diagnostics")
	public Diagnostics getDiagnostics() {
		return diagnostics;
	}
	public void setDiagnostics(Diagnostics diagnostics) {
		this.diagnostics = diagnostics;
	}
	@XmlElement(name="results")
	public Results getResults() {
		return results;
	}
	public void setResults(Results results) {
		this.results = results;
	}
	

}
