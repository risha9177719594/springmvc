package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.biller.model.Match;
import com.example.model.Person;
import com.example.service.PersonService;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

@Controller
public class PersonController {
	private final String USER_AGENT = "Mozilla/5.0";
    @Autowired
    private PersonService personService;

    @RequestMapping("/testest")
    public String listPeople(Map<String, Object> map) throws IOException {

    	String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetScoreboardAppContent?%20HTTP/1.1";

		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();

		con.setRequestMethod("GET");

		// add request header
		con.setRequestProperty("User-Agent", USER_AGENT);

		int responseCode = con.getResponseCode();
		
		BufferedReader in = new BufferedReader(new InputStreamReader(
				con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		Document doc = convertStringToDocument(response);

		doc.getDocumentElement().normalize();
		NodeList nList = doc.getElementsByTagName("Matches");
		Match match = new Match();
		for (int i = 0; i < nList.getLength(); i++) {
			Node node = nList.item(i);
			Attr attr = (Attr) node.getAttributes().getNamedItem("statusId");
			String attribute = attr.getValue();
			if (attribute.equals("L")) {
				NodeList matchSubNodes = node.getChildNodes();
				for (int matchCh = 0; matchCh < matchSubNodes.getLength(); matchCh++) {
					Node matchNode = matchSubNodes.item(matchCh);
			}
		}}
        return "crickHome";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("person") Person person, BindingResult result) {

        personService.addPerson(person);

        return "redirect:/biller/";
    }

    @RequestMapping("/delete/{personId}")
    public String deletePerson(@PathVariable("personId") Integer personId) {

        personService.removePerson(personId);

        return "redirect:/biller/";
    }
    private Document convertStringToDocument(StringBuffer response) {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder;
		Document doc = null;
		try {
			builder = factory.newDocumentBuilder();
			doc = builder.parse(new InputSource(new StringReader(response
					.toString())));
			return doc;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doc;
	}
}
