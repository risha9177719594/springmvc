package com.biller.service.Impl;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biller.dao.CricketDAO;
import com.biller.model.OnTheRun;
import com.biller.model.news.Item;
import com.biller.model.yahoo.Ball;
import com.biller.model.yahoo.Match;
import com.biller.model.yahoo.Matches;
import com.biller.model.yahoo.Over;
import com.biller.model.yahoo.PlayerProfile;
import com.biller.model.yahoo.Query;
import com.biller.model.yahoo.Results;
import com.biller.model.yahoo.Team;
import com.biller.model.yahoo.TeamProfile;
import com.biller.service.CricketService;
@Service
public class CricketServiceImpl implements CricketService{
	
	/*@Autowired
    private CricketDAO cdao;*/

	@Override
	public Results getFixturesYahoo() throws IOException, JAXBException {
			
			
			String urlPast ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.past_matches&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
			//String urlFut ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.upcoming_matches&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
			//String urlLive ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.upcoming_matches&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
			
			
				URL obj = new URL(urlPast);
				JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
				Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
				Query query = (Query)jaxbUnmarshaller.unmarshal(obj);
				
				
				//URL objFut = new URL(urlFut);
				//Query queryFut = (Query)jaxbUnmarshaller.unmarshal(objFut);
		 
			
			com.biller.model.yahoo.Matches matches=new com.biller.model.yahoo.Matches();
			
			
			List fin=query.getResults().getMatch();
			Iterator itr = fin.iterator();
			while(itr.hasNext()){
				Match m=new Match();
				m=(Match)itr.next();
				Iterator it=m.getResult().getTeam().iterator();
				while(it.hasNext()){
					Team t=new Team();
					t=(Team)it.next();
					if(t.getId().equals(m.getTeam().get(0).getTeamid())){
						t.setTeam(m.getTeam().get(0).getTeam());
					}else{
						t.setTeam(m.getTeam().get(1).getTeam());
					}
				}
			}
			/*if(query.getResults().getScorecardList().size() >0){
				query.getResults().setScorecard(query.getResults().getScorecardList().get(0));
			}*/
			matches.setMat(fin);
			
			return query.getResults();
			
	}

	@Override
	public List<Item> getNews() throws MalformedURLException, JAXBException {
		String urlNews = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.news%20%20where%20region%3D%22in%22&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL obj = new URL(urlNews);
		JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		Query query = (Query)jaxbUnmarshaller.unmarshal(obj);
		/*if(query.getResults().getScorecardList().size() >0){
			query.getResults().setScorecard(query.getResults().getScorecardList().get(0));
		}*/
		return query.getResults().getItem();
		
	}

	@Override
	public Results getMatch(Integer itemId) throws MalformedURLException, JAXBException {
		String urlMatch ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.scorecard%20where%20match_id%3D"+
				itemId +
							"&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		String commentary ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.commentary%20where%20match_id%3D"+
				itemId +
							"&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		//https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.commentary%20where%20match_id%3D11985&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0
		URL obj = new URL(urlMatch);
		JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		Query query = (Query)jaxbUnmarshaller.unmarshal(obj);
		
		URL objCommentary = new URL(commentary);
		JAXBContext jaxbContextCommentary = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshallerCommentary = jaxbContextCommentary.createUnmarshaller();
		Query queryCommentary = (Query)jaxbUnmarshallerCommentary.unmarshal(objCommentary);
		query.getResults().setOver(queryCommentary.getResults().getOver());
		Iterator animalItr = query.getResults().getOver().iterator();
		while(animalItr.hasNext()) {
		      Over animalObj = (Over)animalItr.next();
		    }
		if(query.getResults().getScorecardList().size() >0){
			query.getResults().setScorecard(query.getResults().getScorecardList().get(0));
		}
		return query.getResults();
	}

	@Override
	public Results getFixFut() throws IOException, JAXBException {
		String urlFut ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.upcoming_matches&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL obj = new URL(urlFut);
		JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		Query query = (Query)jaxbUnmarshaller.unmarshal(obj);
		String seriesFut ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.series.upcoming&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL objFutSeries = new URL(seriesFut);
		//JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
		//Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		Query query1 = (Query)jaxbUnmarshaller.unmarshal(objFutSeries);
		query.getResults().setSeries(query1.getResults().getSeries());
		
		com.biller.model.yahoo.Matches matches=new com.biller.model.yahoo.Matches();
		/*if(query.getResults().getScorecardList().size() >0){
			query.getResults().setScorecard(query.getResults().getScorecardList().get(0));
		}*/
	
	return query.getResults();
	}

	@Override
	public Results getFixLive() throws IOException, JAXBException {
		String urlLive ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.scorecard.live&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL obj = new URL(urlLive);
		JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		Query query = (Query)jaxbUnmarshaller.unmarshal(obj);
		//System.out.println(query.getResults().getScorecardList().size() + "hey is this sixe");
		/*if(query.getResults().getScorecardList().size() >0){
			query.getResults().setScorecard(query.getResults().getScorecardList().get(0));
		}*/
	return query.getResults();
	}

	@Override
	public Results getTeams() throws IOException, JAXBException {
		String urlLive ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.teams&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL obj = new URL(urlLive);
		JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		Query query = (Query)jaxbUnmarshaller.unmarshal(obj);
		/*if(query.getResults().getScorecardList().size() >0){
			query.getResults().setScorecard(query.getResults().getScorecardList().get(0));
		}*/
	return query.getResults();
	}

	@Override
	public Results getTeam(Integer itemId) throws MalformedURLException,
			JAXBException {
		String urlTeam ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.team.profile%20where%20team_id%3D"+
				itemId +
							"&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL obj = new URL(urlTeam);
		JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		Query query = (Query)jaxbUnmarshaller.unmarshal(obj);
		String playerIDs="";
		for(int i=0;i<query.getResults().getTeamProfile().getPlayers().getPlayer().size();i++){
			if(i+1<query.getResults().getTeamProfile().getPlayers().getPlayer().size())
				playerIDs=playerIDs+query.getResults().getTeamProfile().getPlayers().getPlayer().get(i).getPersonid()+",";
			else
				playerIDs=playerIDs+query.getResults().getTeamProfile().getPlayers().getPlayer().get(i).getPersonid()+"";
		}
		List<PlayerProfile> pf=new ArrayList<PlayerProfile>();
		String pProf="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.player.profile%20where%20player_id%20in%20( "+
				playerIDs+")&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL objCommentary = new URL(pProf);
		JAXBContext jaxbContextPf = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshallerPf = jaxbContextPf.createUnmarshaller();
		Query queryPf = (Query)jaxbUnmarshallerPf.unmarshal(objCommentary);
		query.getResults().getTeamProfile().setPf(queryPf.getResults().getPlayerProfile());
		
		return query.getResults();
	}

	@Override
	public com.biller.model.wc.Results getWcTeams() throws MalformedURLException, JAXBException {
		String urlTeam ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.team.profile%20where%20team_id%20in%20(1,2,3,4,5,6,7,8,9,10,11,12,13,14,1188,16,21)"+
							"&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL obj = new URL(urlTeam);
		JAXBContext jaxbContext = JAXBContext.newInstance(com.biller.model.wc.Query.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		com.biller.model.wc.Query query = (com.biller.model.wc.Query)jaxbUnmarshaller.unmarshal(obj);
		String playerIDs="";
		List<TeamProfile> tf=new ArrayList<TeamProfile>();
		tf=query.getResults().getTeamProfile();
		for(TeamProfile t:tf){
		for(int i=0;i<t.getPlayers().getPlayer().size();i++){
			if(i+1<t.getPlayers().getPlayer().size())
				playerIDs=playerIDs+t.getPlayers().getPlayer().get(i).getPersonid()+",";
			else
				playerIDs=playerIDs+t.getPlayers().getPlayer().get(i).getPersonid()+"";
		}}
		List<PlayerProfile> pf=new ArrayList<PlayerProfile>();
		String pProf="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.player.profile%20where%20player_id%20in%20( "+
				playerIDs+")&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		URL objCommentary = new URL(pProf);
		JAXBContext jaxbContextPf = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshallerPf = jaxbContextPf.createUnmarshaller();
		Query queryPf = (Query)jaxbUnmarshallerPf.unmarshal(objCommentary);
		query.getResults().getTeamProfile().get(0).setPf(queryPf.getResults().getPlayerProfile());
		
		return query.getResults();
	}

	@Override
	public String getMatchComent(String message1) throws MalformedURLException, JAXBException{
		int mtachId = Integer.parseInt(message1);
		String commentary ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.commentary%20where%20match_id%3D"+
				mtachId +"&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		
		URL objCommentary = new URL(commentary);
		JAXBContext jaxbContextCommentary = JAXBContext.newInstance(Query.class);
		Unmarshaller jaxbUnmarshallerCommentary = jaxbContextCommentary.createUnmarshaller();
		Query queryCommentary = (Query)jaxbUnmarshallerCommentary.unmarshal(objCommentary);
		
		Iterator animalItr = queryCommentary.getResults().getOver().iterator();
		Over lastOv=null;
		Ball bl=null;
		String msg="";
		String img="";
		while(animalItr.hasNext()) {
		      Over animalObj = (Over)animalItr.next();
		      if(null!=lastOv && Integer.parseInt(lastOv.getNum())<Integer.parseInt((animalObj.getNum())))
		    	  lastOv = animalObj;
		      if(null==lastOv)
		    	  lastOv = animalObj;
		    }	
		if(null!=lastOv){
			Iterator ballItr = lastOv.getBall().iterator();
			while(ballItr.hasNext()){
				Ball b=(Ball)ballItr.next();
				//out coment
				if(b.getComent().contains("OUT")){
					img="<img src='/resources/img/c/out.gif'  width='100' height='100' />";
					bl=b;
				}
				//6 coment
				if(b.getComent().contains("SIX")){
					img="<img src='/resources/img/c/6.gif'  width='100' height='100' />";
					bl=b;
				}
				//4 coment
				if(b.getComent().contains("FOUR")){
					img="<img src='/resources/img/c/wow.gif'  width='100' height='100' />";
					bl=b;
				}
				//0.0 coment
				if((lastOv.getNum().equalsIgnoreCase("0") || 
						lastOv.getNum().equalsIgnoreCase("10") || 
						lastOv.getNum().equalsIgnoreCase("20") || 
						lastOv.getNum().equalsIgnoreCase("30") || 
						lastOv.getNum().equalsIgnoreCase("40") || 
						lastOv.getNum().equalsIgnoreCase("45") || 
						lastOv.getNum().equalsIgnoreCase("49") || 
						lastOv.getNum().equalsIgnoreCase("50")) && b.getNumber().equalsIgnoreCase("0")){
					bl=b;
				}
				//Man of the Match
				if(b.getComent().contains("Man of the Match")){
					img="<img src='/resources/img/c/kohli.gif'  width='100' height='100' />";
					bl=b;
				}
				//ball.c.toLowerCase().indexOf("<b>") >= 0
			}
		}
		/*OnTheRun onr=cdao.getONR();
		if(null!=bl){
			if(null==onr){
				onr.setBall(bl.getNumber());
				onr.setComent(bl.getComent());
				onr.setImg("");
				onr.setMatchId(message1);
				onr.setOver(lastOv.getNum());
				onr.setRuns(bl.getRuns());
				msg=bl.getRuns()+") : "+img + bl.getComent();
				cdao.saveONR(onr);
			}else if(!(onr.getComent().equalsIgnoreCase(bl.getComent()))){
				onr.setBall(bl.getNumber());
				onr.setComent(bl.getComent());
				onr.setImg("");
				onr.setMatchId(message1);
				onr.setOver(lastOv.getNum());
				onr.setRuns(bl.getRuns());
				msg=bl.getRuns()+") : "+img+ bl.getComent();
				cdao.saveONR(onr);
			}
		}*/
		
		return msg;
	}
	

}
