package com.biller.service.Impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.biller.model.Match;
import com.biller.model.Matches;
import com.biller.model.Payer;
import com.biller.model.ScoreboardApp;
import com.biller.model.news.Item;
import com.biller.model.news.RSS;
import com.biller.model.standing.PlayerStandings;
import com.biller.model.standing.Standings;
import com.biller.model.stats.Stats;
import com.biller.model.yahoo.Query;
import com.biller.service.ScoreService;

@Service
public class ScoreServiceImpl implements ScoreService{

	@Override
	public Standings getStandings(String seriesId) {
		
		String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetStandings?clientId=38&seriesId="+seriesId;
		Standings standings = new Standings();
		try {
		URL obj;
		obj = new URL(url);
					
		JAXBContext jaxbContext = JAXBContext.newInstance(Standings.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		standings = (Standings)jaxbUnmarshaller.unmarshal(obj);
		
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return standings;
	}

	@Override
	public Matches getFixtures() throws Exception {
		
		String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetScoreboardAppContent?%20HTTP/1.1";

		URL obj = new URL(url);
		
		JAXBContext jaxbContext = JAXBContext.newInstance(ScoreboardApp.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		ScoreboardApp scoreboardApp = (ScoreboardApp)jaxbUnmarshaller.unmarshal(obj);
		Match mm=new Match();
		Iterator itr=scoreboardApp.getMs().iterator();
		Matches matches=new Matches();
		List<Match> matList = new ArrayList<Match>();
		while(itr.hasNext()){
			Matches mtchs=(Matches)itr.next();
			if(mtchs.getMat()!=null){
			Iterator itMtchs=mtchs.getMat().iterator();
			while(itMtchs.hasNext()){
				Match mtch=(Match)itMtchs.next();
				String date = mtch.getStartDate().substring(0,10);
				mtch.setStartDate(date);
				matList.add(mtch);
				
			}}
		}
		matches.setMat(matList);
		return matches;
	}

	@Override
	public List<Payer> getPlayerStats(String teamId, String seriesId) throws JAXBException, MalformedURLException {
		String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetBattingStastics?clientId=38&localeId=en&seriesId="+seriesId+"&battingOrder=1&teamListId="+teamId;
		URL obj = new URL(url);
		
		//File fXmlFileBat = new File("C:/Users/rb720344/Desktop/Desktop/xml/GetBattingStastics.xml");			
		JAXBContext jaxbContext = JAXBContext.newInstance(Stats.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		Stats stats = (Stats)jaxbUnmarshaller.unmarshal(obj);
		return stats.getPlayers().get(0).getPlayer();
	}

	@Override
	public Match getLiveMatch(String matchId) throws JAXBException, MalformedURLException {
		String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetScoreboardAppContent?%20HTTP/1.1";

		URL obj = new URL(url);
		//File fXmlFile = new File("C:/Users/rb720344/Desktop/Desktop/xml/GetScoreboardAppContent.xml");			
		JAXBContext jaxbContext = JAXBContext.newInstance(ScoreboardApp.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		ScoreboardApp scoreboardApp = (ScoreboardApp)jaxbUnmarshaller.unmarshal(obj);
			// t=node.toString();
			// }
		Match mm=new Match();
		Iterator itr=scoreboardApp.getMs().iterator();
		while(itr.hasNext()){
			Matches mtchs=(Matches)itr.next();
			if(mtchs.getMat()!=null){
			Iterator itMtchs=mtchs.getMat().iterator();
			while(itMtchs.hasNext()){
				Match mtch=(Match)itMtchs.next();
				if(mtch.getMatchId().equals(matchId)){
					mm=mtch;
					String date = mm.getStartDate();
					mm.setStartDate(date.substring(0, 10));
				}
			}}
		}
		return mm;
	}

	@Override
	public List<Item> getNews() throws Exception {
		String url = "http://live-feeds.cricbuzz.com/CricbuzzFeed?format=xml";

		URL obj = new URL(url);			
		JAXBContext jaxbContext = JAXBContext.newInstance(RSS.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		RSS stats = (RSS)jaxbUnmarshaller.unmarshal(obj);
		Iterator itr=stats.getChannel().getItem().iterator();
		List<Item> lI = new ArrayList<Item>();
		int i=0;
		while(itr.hasNext()){
			i++;
			Item p= (Item)itr.next();
			
				int imgBegIndex = p.getDescription().indexOf("<img");
				int imgEndIndex = p.getDescription().indexOf(">", imgBegIndex);
				if(imgBegIndex>=0&&imgEndIndex>=0)
					p.setImage(p.getDescription().substring(imgBegIndex, imgEndIndex));
				String refURLExpr = 
						"\\s*(?i)href\\s*=\\s*(\"([^\"]*\")|'[^']*'|([^'\">\\s]+))";
				//Pattern patternLink;
				//Matcher matcherLink;
				//patternLink = Pattern.compile(refURLExpr);
				p.setDescription(p.getDescription().replaceAll(refURLExpr, "")); 
				p.setNo(i);
				lI.add(p);
			
			
			
		}
		return lI;
	}

	@Override
	public List<Item> getBlog()  throws Exception {
		String url = "http://myrisha-cricket.blogspot.com/feeds/posts/default?alt=rss";

		URL obj = new URL(url);			
		JAXBContext jaxbContext = JAXBContext.newInstance(RSS.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		RSS stats = (RSS)jaxbUnmarshaller.unmarshal(obj);
		Iterator itr=stats.getChannel().getItem().iterator();
		List<Item> lI = new ArrayList<Item>();
		int i=0;
		while(itr.hasNext()){
			i++;
			Item p= (Item)itr.next();
			
				int imgBegIndex = p.getDescription().indexOf("<img border=\"0\" width=\"244\" style=\"border:3px solid #595959;\" class=\"imgborder\" src=\"");
				int imgEndIndex = p.getDescription().indexOf(">", imgBegIndex);
				if(imgBegIndex>=0&&imgEndIndex>=0){
					String im=p.getDescription().substring(imgBegIndex, imgEndIndex);
						p.setImage(im.replaceAll("width=\"244\"", ""));
					
				}else{
					p.setImage("<img  src='http://2.bp.blogspot.com/-21asOfQix4Q/U7rrwEg71hI/AAAAAAAAMFY/KWfPf3xNl2E/s1600/scoreitnewsitem.jpg'/>");
				}
				String refURLExpr = 
						"\\s*(?i)href\\s*=\\s*(\"([^\"]*\")|'[^']*'|([^'\">\\s]+))";
				//Pattern patternLink;
				//Matcher matcherLink;
				//patternLink = Pattern.compile(refURLExpr);
				p.setDescription(p.getDescription().replaceAll(refURLExpr, "")); 
				p.setNo(i);
				lI.add(p);
			
			
			
		}
		return lI;
	}
	@Value( "${yql}" )
	private String yql;
	@Value( "${past_matches}" )
	private String past_matches;
	@Value( "${post}" )
	private String post;
	@Autowired
	private Environment env;
	@Override
	public com.biller.model.yahoo.Matches getFixturesYahoo() throws IOException, JAXBException {
		
		
		//Properties prop = new Properties();
		//InputStream input = null;
		String urlPast ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.past_matches&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		String urlFut ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.upcoming_matches&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		//String urlLive ="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.upcoming_matches&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0";
		
		//String filename = "yahoo.properties";
		//input = Query.class.getClassLoader().getResourceAsStream(filename);
			//input = new FileInputStream("yahoo.properties");
	 
			// load a properties file
			//prop.load(input);
	 
			// get the property value and print it outenv.getProperty("jdbc.url")
			//url=yql+past_matches+post;
			URL obj = new URL(urlPast);
			JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
			Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
			Query query = (Query)jaxbUnmarshaller.unmarshal(obj);
			
			
			URL objFut = new URL(urlFut);
			//JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
			//Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
			Query queryFut = (Query)jaxbUnmarshaller.unmarshal(objFut);
	 
		//input.close();
				
		
		
		
		
		//String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetScoreboardAppContent?%20HTTP/1.1";

		com.biller.model.yahoo.Matches matches=new com.biller.model.yahoo.Matches();
		
		
		List fin=query.getResults().getMatch();
		//fin.addAll(queryFut.getResults().getMatch());
		
		matches.setMat(fin);
		return matches;
	}

	@Override
	public Item getBlog(String blogId) throws Exception {
		String url = "http://myrisha-cricket.blogspot.com/feeds/posts/default?alt=rss";

		URL obj = new URL(url);			
		JAXBContext jaxbContext = JAXBContext.newInstance(RSS.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		RSS stats = (RSS)jaxbUnmarshaller.unmarshal(obj);
		Iterator itr=stats.getChannel().getItem().iterator();
		List<Item> lI = new ArrayList<Item>();
		int i=0;
		Item p= new Item();
		Item p1=new Item();
		while(itr.hasNext() && i<=7){
			i++;
			p=(Item)itr.next();
			if(i==Integer.parseInt(blogId)){
				p1=p;
			}
		}
		return p1;
	}

	@Override
	public PlayerStandings getStandings(String seriesId, String teamListId, int n) {
		String url = "";
		switch(n){
			case 1:
				url="http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetBattingStastics?clientId=1&localeId=1&battingOrder=1&seriesId="+seriesId+"&teamListId="+teamListId;
				break;
			case 2:
				url="http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetBowlingStastics?clientId=1&localeId=1&bowlingOrder=1&seriesId="+seriesId+"&teamListId="+teamListId;
				break;
			case 3:
				url="http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetFieldingStastics?clientId=1&localeId=1&fieldingOrder=1&seriesId="+seriesId+"&teamListId="+teamListId;
				break;
			default:
				break;
				
		}
		PlayerStandings standings = new PlayerStandings();
		try {
		URL obj;
		obj = new URL(url);
					
		JAXBContext jaxbContext = JAXBContext.newInstance(Standings.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		standings = (PlayerStandings)jaxbUnmarshaller.unmarshal(obj);
		System.out.println("number of players"+standings.getPlayer().getPlayers().size());
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return standings;
	}

}
