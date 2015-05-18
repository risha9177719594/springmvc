package com.biller.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import com.biller.model.Match;
import com.biller.model.Matches;
import com.biller.model.Payer;
import com.biller.model.ScoreboardApp;
import com.biller.model.news.Item;
import com.biller.model.standing.Standings;
import com.biller.service.ScoreService;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

@Controller
@RequestMapping("/ipl")
public class BillController {
	private final String USER_AGENT = "Mozilla/5.0";
	@Autowired
    private ScoreService scoreService;
	@RequestMapping("/")
	public String home(Model model) {
		String seriesId="2972";
		Standings standings = scoreService.getStandings(seriesId);		
		String stn = standings.getHeader().getResult();
		StringTokenizer t= new StringTokenizer(stn,",");
		Map<String,String> stMap = new HashMap<String,String>();
		while(t.hasMoreTokens()){
			String s = t.nextToken();
			String s1=s.trim();
			int pts = Integer.parseInt(s1.substring(4));
			stMap.put(s1.substring(0, 3), pts+"");
		}
		model.addAttribute("standings", stMap);
		model.addAttribute("standingsdi", standings);
		Matches matches=new Matches();
		com.biller.model.yahoo.Matches matchesY=new com.biller.model.yahoo.Matches();
		try {
			matches = scoreService.getFixtures();
			//matchesY = scoreService.getFixturesYahoo();
			List<Item> itm = scoreService.getNews();
			model.addAttribute("news",itm);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("fixtures",matches);
		model.addAttribute("teamsDet",standings);
		return "crickHome";
	}
	@RequestMapping("/blog")
	public String myBlog(Model model) {
		Matches matches=new Matches();
		try {
			matches = scoreService.getFixtures();
			List<Item> itm = scoreService.getBlog();
			model.addAttribute("blogs",itm);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("fixtures",matches);
		
		return "blogHome";
	}
	
	
	@RequestMapping("/blog/{blogId}")
	public String myBlogItem(@PathVariable("blogId") String blogId,Model model) {
		Matches matches=new Matches();
		try {
			matches = scoreService.getFixtures();
			Item itm = scoreService.getBlog(blogId);
			model.addAttribute("blogItm",itm);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("fixtures",matches);
		
		return "blogHome";
	}
	@RequestMapping("/teamId/{id}")
	public String teamDetails(@PathVariable("id") String teamId, Model model)
			throws Exception {
		String seriesId="2972";
		List<Payer> players=scoreService.getPlayerStats(teamId,seriesId);
		Iterator<Payer> itr=players.iterator();
		while(itr.hasNext()){
			Payer p = itr.next();
		}
		Standings standings = scoreService.getStandings(seriesId);		
		String stn = standings.getHeader().getResult();
		StringTokenizer t= new StringTokenizer(stn,",");
		Map<String,String> stMap = new HashMap<String,String>();
		while(t.hasMoreTokens()){
			String s = t.nextToken();
			String s1=s.trim();
			int pts = Integer.parseInt(s1.substring(4));
			stMap.put(s1.substring(0, 3), pts+"");
		}
		model.addAttribute("standings", stMap);
		Matches matches=new Matches();
		try {
			matches = scoreService.getFixtures();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("fixtures",matches);
		model.addAttribute("teamsDet",standings);
		return "crickHome";
	}
	@RequestMapping("/id/{id}")
	public String matchDetails(@PathVariable("id") Integer itemId, Model model)
			throws Exception {

		String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetScoreboardAppContent?%20HTTP/1.1";

		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();

		// optional default is GET
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
				if(mtch.getMatchId().equals(itemId.toString())){
					mm=mtch;
					String date = mm.getStartDate();
					mm.setStartDate(date.substring(0, 10));
				}
			}}
		}

		model.addAttribute("match", mm);
		Matches matches=new Matches();
		try {
			matches = scoreService.getFixtures();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("fixtures",matches);
		return "matchHome";
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
	@RequestMapping("/liveScore/{id}")
	@ResponseBody
	public String liveScore(@PathVariable("id") String itemId, Model model)
			throws Exception {
		String seriesId="2972";
		Match mat = scoreService.getLiveMatch(itemId);
		
		Matches matches=new Matches();
		try {
			matches = scoreService.getFixtures();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("fixtures",matches);
		model.addAttribute("match",mat);
		
		return mat.getBatsmen().getStriker().getShortName()+" : "+mat.getBatsmen().getStriker().getRuns()+" off "+mat.getBatsmen().getStriker().getBalls()+",," +
		mat.getBatsmen().getNonStriker().getShortName()+" : "+mat.getBatsmen().getNonStriker().getRuns()+" off "+mat.getBatsmen().getNonStriker().getBalls()+",," +
		mat.getBowlers().getCurrentBowler().getShortName()+" : "+mat.getBowlers().getCurrentBowler().getRuns()+" , "+mat.getBowlers().getCurrentBowler().getOvers()+" , " +mat.getBowlers().getCurrentBowler().getWickets()+"";
	}
	
	@RequestMapping("/liveStream/{id}")
	public String liveStream(@PathVariable("id") String streamId,Model model) {
		String seriesId="2972";
		Matches matches=new Matches();
		try {
			matches = scoreService.getFixtures();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("fixtures",matches);
		model.addAttribute("streamId",streamId);
		return "liveStream";
	}
}