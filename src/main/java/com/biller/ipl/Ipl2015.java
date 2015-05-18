package com.biller.ipl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import com.biller.model.LiveMatch;
import com.biller.model.Match;
import com.biller.model.Matches;
import com.biller.model.Payer;
import com.biller.model.ScoreboardApp;
import com.biller.model.news.Item;
import com.biller.model.standing.Standings;
import com.biller.service.CricketService;
import com.biller.service.ScoreService;

@Controller
@RequestMapping("/2015")
public class Ipl2015 {
	
	private final String USER_AGENT = "Mozilla/5.0";
	@Autowired
    private CricketService cricketService;
	@Autowired
    private ScoreService scoreService;
	@RequestMapping("/")
	public String home(Model model) {
		System.out.println("its ipl 2015");
		String seriesId="5080";
		
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		try {
			matchLive = cricketService.getFixLive();
			matchFut = cricketService.getFixFut();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JAXBException e1) {
			// TODO Auto-generated catch block 12208
			e1.printStackTrace();
		}
		List<LiveMatch> lm=new ArrayList<LiveMatch>();
		if(null!=matchLive){
			
			Iterator tr=matchLive.getScorecardList().iterator();
			while(tr.hasNext()){
				
				LiveMatch l=new LiveMatch();
				com.biller.model.yahoo.Scorecard s=(com.biller.model.yahoo.Scorecard)tr.next();
				if(s.getSeries().getSeries_id().equals("12208")){
				l.setMatchid(s.getMid());
				l.setMatchNo(s.getMatchNumber());
				l.setTeam1(s.getTeams().get(0).getFn());
				switch(Integer.parseInt(s.getTeams().get(0).getI())){
				case 1107:
					l.setTeam1Logo("/resources/img/kxip.png");
					break;
				case 1109:
					l.setTeam1Logo("/resources/img/dd.png");
					break;
				case 1111:
					l.setTeam1Logo("/resources/img/mi.png");
					break;
				case 1105:
					l.setTeam1Logo("/resources/img/rcb.png");
					break;
				case 1379:
					l.setTeam1Logo("/resources/img/srh.png");
					break;
				case 1106:
					l.setTeam1Logo("/resources/img/kkr.png");
					break;
				case 1110:
					l.setTeam1Logo("/resources/img/rr.png");
					break;
				case 1108:
					l.setTeam1Logo("/resources/img/csk.png");
					break;
				
				default:
					l.setTeam1Logo("/resources/img/scoreItLogo.png");
					break;
				}
				switch(Integer.parseInt(s.getTeams().get(1).getI())){
				case 1107:
					l.setTeam2Logo("/resources/img/kxip.png");
					break;
				case 1109:
					l.setTeam2Logo("/resources/img/dd.png");
					break;
				case 1111:
					l.setTeam2Logo("/resources/img/mi.png");
					break;
				case 1105:
					l.setTeam2Logo("/resources/img/rcb.png");
					break;
				case 1379:
					l.setTeam2Logo("/resources/img/srh.png");
					break;
				case 1106:
					l.setTeam2Logo("/resources/img/kkr.png");
					break;
				case 1110:
					l.setTeam2Logo("/resources/img/rr.png");
					break;case 1108:
						l.setTeam2Logo("/resources/img/csk.png");
						break;
				
				default:
					l.setTeam2Logo("/resources/img/scoreItLogo.png");
					break;
				}
				//l.setTeam1Captain(s.getTeams().get(0).getI());
				l.setTeam2(s.getTeams().get(1).getFn());
				l.setVenue(s.getPlace().getStadium());
				l.setScore(s.getPast_ings().get(0).getSummary().getBatSummary().getRuns()+" / "+s.getPast_ings().get(0).getSummary().getBatSummary().getWikets());
				l.setStatus("live");
				lm.add(l);
			}}
		}else if(null!=matchFut){
			
			Iterator tr=matchFut.getMatch().iterator();
			while(tr.hasNext()){
				
				LiveMatch l=new LiveMatch();
				com.biller.model.yahoo.Match s=(com.biller.model.yahoo.Match)tr.next();
				if(s.getSeries_id().equals("12208")){
				l.setMatchid(s.getMatchid());
				l.setMatchNo(s.getMatchNo());
				l.setTeam1(s.getTeam().get(0).getTeamName());
				
				switch(Integer.parseInt(s.getTeam().get(0).getTeamId())){
				case 1107:
					l.setTeam1Logo("/resources/img/kxip.png");
					break;
				case 1109:
					l.setTeam1Logo("http://www.delhidaredevils.com/wp-content/uploads/2015/04/daredilli-website-banner.jpg");
					break;
				case 1111:
					l.setTeam1Logo("/resources/img/mi.png");
					break;
				case 1105:
					l.setTeam1Logo("/resources/img/rcb.png");
					break;
				case 1379:
					l.setTeam1Logo("/resources/img/srh.png");
					break;
				case 1106:
					l.setTeam1Logo("/resources/img/kkr.png");
					break;
				case 1110:
					l.setTeam1Logo("/resources/img/rr.png");
					break;
				case 1108:
					l.setTeam1Logo("/resources/img/csk.png");
					break;
				
				default:
					l.setTeam1Logo("/resources/img/scoreItLogo.png");
					break;
				}
				switch(Integer.parseInt(s.getTeam().get(0).getTeamId())){
				case 1107:
					l.setTeam2Logo("/resources/img/kxip.png");
					break;
				case 1109:
					l.setTeam2Logo("http://www.delhidaredevils.com/wp-content/uploads/2015/04/daredilli-website-banner.jpg");
					break;
				case 1111:
					l.setTeam2Logo("/resources/img/mi.png");
					break;
				case 1105:
					l.setTeam2Logo("/resources/img/rcb.png");
					break;
				case 1379:
					l.setTeam2Logo("/resources/img/srh.png");
					break;
				case 1106:
					l.setTeam2Logo("/resources/img/kkr.png");
					break;
				case 1110:
					l.setTeam2Logo("/resources/img/rr.png");
					break;case 1108:
						l.setTeam2Logo("/resources/img/csk.png");
						break;
				
				default:
					l.setTeam2Logo("/resources/img/scoreItLogo.png");
					break;
				}
					
				//l.setTeam1Captain(s.getTeams().get(0).getI());
				l.setTeam2(s.getTeam().get(1).getTeamName());
				l.setVenue(s.getVenue());
				l.setScore("");
				l.setStatus("fut");
				l.setMatchDay(s.getStartDate().substring(8, 10));
				l.setMatchHour(s.getStartDate().substring(11, 13));
				l.setMatchMin(s.getStartDate().substring(14, 16));
				lm.add(l);
			}}
		}
		//Standings standings = scoreService.getStandings("2888");2015-04-21T20:00:00+05:30
		//PlayerStandings batStandings = scoreService.getStandings(seriesId,"1,2,3,57,9,4,2,5,52,8,6,37,7,10,212,69",1);
		//PlayerStandings ballStandings = scoreService.getStandings(seriesId,"1,2,3,57,9,4,2,5,52,8,6,37,7,10,212,69",2);
		//PlayerStandings fieldStandings = scoreService.getStandings(seriesId,"1,2,3,57,9,4,2,5,52,8,6,37,7,10,212,69",3);
		
		
		Standings standings = scoreService.getStandings(seriesId);		
		String stn = standings.getHeader().getResult();
		StringTokenizer t= new StringTokenizer(stn,",");
		Map<String,String> stMap = new HashMap<String,String>();
		while(t.hasMoreTokens()){
			String s = t.nextToken();
			String s1=s.trim();
			//int pts = Integer.parseInt(s1.substring(4));
			stMap.put(s1.substring(0, 3), 1+"");
		}
		model.addAttribute("standings", stMap);
		model.addAttribute("nextM", lm);
		model.addAttribute("standingsdi", standings);
		Matches matches=new Matches();
		///com.biller.model.yahoo.Matches matchesY=new com.biller.model.yahoo.Matches();
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
		return "ipl2015";
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
		String seriesId="5080";
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
		String seriesId="5080";
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
		String seriesId="5080";
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
