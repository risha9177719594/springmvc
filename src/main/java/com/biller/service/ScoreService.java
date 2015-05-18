package com.biller.service;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.List;

import javax.xml.bind.JAXBException;

import com.biller.model.Match;
import com.biller.model.Matches;
import com.biller.model.Payer;
import com.biller.model.news.Item;
import com.biller.model.standing.PlayerStandings;
import com.biller.model.standing.Standings;

public interface ScoreService {

	Standings getStandings(String seriesId);

	Matches getFixtures() throws Exception;

	List<Payer> getPlayerStats(String teamId, String seriesId) throws JAXBException, MalformedURLException;

	Match getLiveMatch(String itemId) throws JAXBException, MalformedURLException;

	List<Item> getNews() throws Exception;

	List<Item> getBlog() throws Exception;

	com.biller.model.yahoo.Matches getFixturesYahoo() throws IOException, JAXBException;

	Item getBlog(String blogId)throws Exception;

	PlayerStandings getStandings(String string, String string2, int n);

}
