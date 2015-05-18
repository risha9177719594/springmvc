package com.biller.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.util.List;

import javax.xml.bind.JAXBException;

import com.biller.model.news.Item;
import com.biller.model.yahoo.Results;

public interface CricketService {

	Results getFixturesYahoo() throws IOException, JAXBException;

	List<Item> getNews() throws MalformedURLException, JAXBException;

	Results getMatch(Integer itemId) throws MalformedURLException, JAXBException;

	Results getFixFut() throws IOException, JAXBException;

	Results getFixLive() throws IOException, JAXBException;

	Results getTeams()throws IOException, JAXBException;

	Results getTeam(Integer itemId) throws MalformedURLException, JAXBException;

	com.biller.model.wc.Results getWcTeams() throws MalformedURLException, JAXBException;

	String getMatchComent(String message1) throws MalformedURLException, JAXBException;

}
