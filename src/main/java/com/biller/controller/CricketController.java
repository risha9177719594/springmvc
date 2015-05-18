package com.biller.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.xml.bind.JAXBException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biller.model.news.Item;
import com.biller.model.standing.PlayerStandings;
import com.biller.model.standing.Standings;
import com.biller.model.wc.Schedule;
import com.biller.model.wc.ScheduleConst;
import com.biller.model.yahoo.Captain;
import com.biller.model.yahoo.PlayerProfile;
import com.biller.model.yahoo.Results;
import com.biller.model.yahoo.TeamProfile;
import com.biller.service.CricketService;
import com.biller.service.ScoreService;
import com.sendgrid.SendGrid;
import com.sendgrid.SendGridException;

@Controller
public class CricketController {
	@Autowired
    private CricketService cricketService;
	@Autowired
    private ScoreService scoreService;
	
	@RequestMapping("/")
	public String home(Model model) {
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results teams=new com.biller.model.yahoo.Results();
		try {
			
			matchesY = cricketService.getFixturesYahoo();
			matchFut = cricketService.getFixFut();
			teams = cricketService.getTeams();
			matchLive = cricketService.getFixLive();
			List<Item> itm = cricketService.getNews();
			model.addAttribute("news",itm);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("fixturesP",matchesY);
		model.addAttribute("fixturesF",matchFut);
		model.addAttribute("fixturesL",matchLive);
		//String tmp=matchLive.getScorecard().getMid();
		/*if(matchLive.getScorecard().getMid() != null){
			model.addAttribute("liveId",matchLive.getScorecard().getMid());
		}else
*/		
		if( null != matchLive.getMatch())
			model.addAttribute("liveId",matchLive.getMatch().get(0));
		else
			model.addAttribute("liveId",matchesY.getMatch().get(0));
		model.addAttribute("teams", teams);
		return "cricketHome";
	}
	
	@RequestMapping("/id/{id}")
	public String matchDetails(@PathVariable("id") Integer itemId, Model model)
			throws Exception {

		
		Results match=new Results();
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		try {
			match=cricketService.getMatch(itemId);
			matchesY = cricketService.getFixturesYahoo();
			matchFut = cricketService.getFixFut();
			matchLive = cricketService.getFixLive();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if( null != matchLive.getMatch())
			model.addAttribute("liveId",matchLive.getMatch().get(0));
		else
			model.addAttribute("liveId",matchesY.getMatch().get(0));
		model.addAttribute("match", match);
		model.addAttribute("fixturesP",matchesY);
		model.addAttribute("fixturesF",matchFut);
		model.addAttribute("fixturesL",matchLive);
		return "match";
	}
	@RequestMapping("/admin/id/{id}")
	public String matchDetailsAdmin(@PathVariable("id") Integer itemId, Model model)
			throws Exception {

		
		Results match=new Results();
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		try {
			match=cricketService.getMatch(itemId);
			matchesY = cricketService.getFixturesYahoo();
			matchFut = cricketService.getFixFut();
			matchLive = cricketService.getFixLive();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("match", match);
		model.addAttribute("fixturesP",matchesY);
		model.addAttribute("fixturesF",matchFut);
		model.addAttribute("fixturesL",matchLive);
		return "matchAdm";
	}
	@RequestMapping(value = { "upStatus" }, method = RequestMethod.POST)
	@ResponseBody
	public boolean SendMailTLS(@RequestParam("message") String message1, @RequestParam("sub") String subj, @RequestParam("file") String img){
		String msgBody = message1;
		/*try {
			msgBody = cricketService.getMatchComent(message1);
		} catch (MalformedURLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JAXBException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}*/
		if(!(message1.equals(""))){
		String mail="scoreitofficial@gmail.com";
		String sub=subj;
		String name="scoreitofficial";
		String subject="";
		subject=msgBody.substring(0,msgBody.indexOf(") :")+2);
		SendGrid sendgrid = new SendGrid("risha9177719594", "var5h1n1");

		SendGrid.Email email = new SendGrid.Email();
		email.addTo("scoreitofficial.scoreit12@blogger.com");
		email.setFrom("risha.9177719594@gmail.com");
		email.setSubject(subj);
		email.setHtml(msgBody);
		email.setText(msgBody.replaceAll("<b>", "").replaceAll("</b>", ""));
		
		try {
			//email.addAttachment("image.png", new File(img));
		  SendGrid.Response response = sendgrid.send(email);
		  }
		catch (SendGridException e) {
		  System.out.println(e);
		}
		}
		return true;
		
	}
	@RequestMapping("/teamId/{id}")
	public String teamDetails(@PathVariable("id") Integer itemId,@RequestParam(value="iframe", required=false) String iframe,  Model model)
			throws Exception {

		
		Results match=new Results();
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		try {
			match=cricketService.getTeam(itemId);
			matchesY = cricketService.getFixturesYahoo();
			matchFut = cricketService.getFixFut();
			matchLive = cricketService.getFixLive();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if( null != matchLive.getMatch())
			model.addAttribute("liveId",matchLive.getMatch().get(0));
		else
			model.addAttribute("liveId",matchesY.getMatch().get(0));
		model.addAttribute("team", match);
		model.addAttribute("fixturesP",matchesY);
		model.addAttribute("fixturesF",matchFut);
		model.addAttribute("fixturesL",matchLive);
		if("yes".equals(iframe)){
			return "teamHomeFrame";
		}
		else
			return "teamHome";
	}
	//world cup
	@RequestMapping("/worldcup")
	public String worldCup(Model model)
			throws Exception {

		//https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.team.profile%20where%20team_id%20in%20(1,2,3,4,5,6,7,8,9,10,11,12,13,14)&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0
		com.biller.model.wc.Results match=new com.biller.model.wc.Results();
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		matchLive = cricketService.getFixLive();
		Standings standings = scoreService.getStandings("2888");
		PlayerStandings batStandings = scoreService.getStandings("2888","1,2,3,57,9,4,2,5,52,8,6,37,7,10,212,69",1);
		PlayerStandings ballStandings = scoreService.getStandings("2888","1,2,3,57,9,4,2,5,52,8,6,37,7,10,212,69",2);
		PlayerStandings fieldStandings = scoreService.getStandings("2888","1,2,3,57,9,4,2,5,52,8,6,37,7,10,212,69",3);
		try {
			match=cricketService.getWcTeams();
			List<TeamProfile> lT=match.getTeamProfile();
			List<PlayerProfile> lP = lT.get(0).getPf();
			HashMap<String,PlayerProfile> hm = new HashMap<String,PlayerProfile>();
			for(PlayerProfile pp : lP){
				hm.put(pp.getPersonid(), pp);
			}
			List<PlayerProfile> lpp;
			List<TeamProfile> lTT=new ArrayList<TeamProfile>();
			for(TeamProfile tp:lT){
				lpp = new ArrayList<PlayerProfile>();
				for(Captain c:tp.getPlayers().getPlayer()){
					if(hm.containsKey(c.getPersonid())){
						lpp.add(hm.get(c.getPersonid()));
					}
				}
				//tp.setPf(lpp);
				TeamProfile hmm = new TeamProfile();
				hmm.setCaptain(tp.getCaptain());
				hmm.setCoach(tp.getCoach());
				hmm.setDescription(tp.getDescription());
				hmm.setPlayer(tp.getPlayer());
				hmm.setPlayers(tp.getPlayers());
				hmm.setRanking(tp.getRanking());
				hmm.setShortName(tp.getShortName());
				hmm.setTeamCategory(tp.getTeamCategory());
				hmm.setTeamFlagPath(tp.getTeamFlagPath());
				hmm.setTeamId(tp.getTeamId());
				hmm.setTeamLogoPath(tp.getTeamLogoPath());
				hmm.setTeamName(tp.getTeamName());
				hmm.setTeamType(tp.getTeamType());
				hmm.setPf(lpp);
				lTT.add(hmm);
			}
			match.setTeamProfile(lTT);
			//matchesY = cricketService.getFixturesYahoo();
			//matchFut = cricketService.getFixFut();
			//matchLive = cricketService.getFixLive();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("teams", match);
		model.addAttribute("standings", standings);
		model.addAttribute("batStandings", batStandings);
		model.addAttribute("ballStandings", ballStandings);
		model.addAttribute("fieldStandings", fieldStandings);
		model.addAttribute("fixturesP",matchesY);
		model.addAttribute("fixturesF",matchFut);
		model.addAttribute("fixturesL",matchLive);
		return "worldCup";
	}
	@RequestMapping("/worldcup/match/{id}")
	public String worldCupMatches(Model model,@PathVariable("id") Integer id)
			throws Exception {
		Schedule sc=new Schedule();
		sc.matchNo=id;
		String matchNo;
		switch(id){
		case 1:
			
			matchNo=ScheduleConst.MATCH1;
			break;
		case 2:
			matchNo=ScheduleConst.MATCH2;
			break;
		case 3:
			matchNo=ScheduleConst.MATCH3;
			break;
		case 4:
			matchNo=ScheduleConst.MATCH4;
			break;
		case 5:
			matchNo=ScheduleConst.MATCH5;
			break;
		case 6:
			matchNo=ScheduleConst.MATCH6;
			break;
		case 7:
			matchNo=ScheduleConst.MATCH7;
			break;
		case 8:
			matchNo=ScheduleConst.MATCH8;
			break;
		case 9:
			matchNo=ScheduleConst.MATCH9;
			break;
		case 10:
			matchNo=ScheduleConst.MATCH10;
			break;
		case 11:
			matchNo=ScheduleConst.MATCH11;
			break;
		case 12:
			matchNo=ScheduleConst.MATCH12;
			break;
		case 13:
			matchNo=ScheduleConst.MATCH13;
			break;
		case 14:
			matchNo=ScheduleConst.MATCH14;
			break;
		case 15:
			matchNo=ScheduleConst.MATCH15;
			break;
		case 16:
			matchNo=ScheduleConst.MATCH16;
			break;
		case 17:
			matchNo=ScheduleConst.MATCH17;
			break;
		case 18:
			matchNo=ScheduleConst.MATCH18;
			break;
		case 19:
			matchNo=ScheduleConst.MATCH19;
			break;
		case 20:
			matchNo=ScheduleConst.MATCH20;
			break;
		case 21:
			matchNo=ScheduleConst.MATCH21;
			break;
		case 22:
			matchNo=ScheduleConst.MATCH22;
			break;
		case 23:
			matchNo=ScheduleConst.MATCH23;
			break;
		case 24:
			matchNo=ScheduleConst.MATCH24;
			break;
		case 25:
			matchNo=ScheduleConst.MATCH25;
			break;
		case 26:
			matchNo=ScheduleConst.MATCH26;
			break;
		case 27:
			matchNo=ScheduleConst.MATCH27;
			break;
		case 28:
			matchNo=ScheduleConst.MATCH28;
			break;
		case 29:
			matchNo=ScheduleConst.MATCH29;
			break;
		case 30:
			matchNo=ScheduleConst.MATCH30;
			break;
		case 31:
			matchNo=ScheduleConst.MATCH31;
			break;
		case 32:
			matchNo=ScheduleConst.MATCH32;
			break;
		case 33:
			matchNo=ScheduleConst.MATCH33;
			break;
		case 34:
			matchNo=ScheduleConst.MATCH34;
			break;
		case 35:
			matchNo=ScheduleConst.MATCH35;
			break;
		case 36:
			matchNo=ScheduleConst.MATCH36;
			break;
		case 37:
			matchNo=ScheduleConst.MATCH37;
			break;
		case 38:
			matchNo=ScheduleConst.MATCH38;
			break;
		case 39:
			matchNo=ScheduleConst.MATCH39;
			break;
		case 40:
			matchNo=ScheduleConst.MATCH40;
			break;
		case 41:
			matchNo=ScheduleConst.MATCH41;
			break;
		case 42:
			matchNo=ScheduleConst.MATCH42;
			break;
		case 43:
			matchNo=ScheduleConst.MATCHQ1;
			break;
		case 44:
			matchNo=ScheduleConst.MATCHQ2;
			break;
		case 45:
			matchNo=ScheduleConst.MATCHQ3;
			break;
		case 46:
			matchNo=ScheduleConst.MATCHQ4;
			break;		
		case 47:
			matchNo=ScheduleConst.MATCHS1;
			break;		
		case 48:
			matchNo=ScheduleConst.MATCHS2;
			break;		
		case 49:
			matchNo=ScheduleConst.MATCHFI;
			break;	
		default:
			matchNo="00_XXX_HH:MM_TEAM1_TEAM2_XXXXXX";
			break;
				
		}
		
		StringTokenizer st2 = new StringTokenizer(matchNo, "_");
		 
		while (st2.hasMoreElements()) {
			String date=(String)st2.nextElement();
			String month=(String)st2.nextElement();
			String time=(String)st2.nextElement();
			String team1=(String)st2.nextElement();
			String team2=(String)st2.nextElement();
			String location=(String)st2.nextElement();
			sc.setDate1(date);
			if(month.equals("MAR")){
				sc.setDate2("3");
			}else{
				sc.setDate2("2");
			}
			StringTokenizer st3 = new StringTokenizer(time, ":");
			while (st3.hasMoreElements()) {
				sc.setTime1((String)st3.nextElement());
				sc.setTime2((String)st3.nextElement());
			}
			
			sc.setDate(date+" "+month);
			sc.setTime(time);
			sc.setTeam1(team1);
			sc.setTeam2(team2);
			sc.setPlace(location);
		}

		model.addAttribute("sc", sc);
		return "wcSchedule";
	}
	//end of the world cup
	@RequestMapping("/live/{id}")
	public String liveCom(@PathVariable("id") Integer itemId, Model model)
			throws Exception {

		
		Results match=new Results();
		try {
			match=cricketService.getMatch(itemId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("match", match);
		return "liveCom";
	}
	@RequestMapping("/blog")
	public String myBlog(Model model) {
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		try {
			
			matchesY = cricketService.getFixturesYahoo();
			matchFut = cricketService.getFixFut();
			List<Item> itm = scoreService.getBlog();
			matchLive = cricketService.getFixLive();
			model.addAttribute("blogs",itm);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("fixturesP",matchesY);
		model.addAttribute("fixturesF",matchFut);
		model.addAttribute("fixturesL",matchLive);
		return "bloggerHome";
	}
	@RequestMapping("/blog/{blogId}")
	public String myBlogItem(@PathVariable("blogId") String blogId,Model model) {
		
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		try {
			
			matchesY = cricketService.getFixturesYahoo();
			matchFut = cricketService.getFixFut();
			matchLive = cricketService.getFixLive();
			Item itm = scoreService.getBlog(blogId);
			model.addAttribute("blogItm",itm);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("fixturesP",matchesY);
		model.addAttribute("fixturesF",matchFut);
		model.addAttribute("fixturesL",matchLive);
		return "bloggerHome";
		
	}
	@RequestMapping("/liveStream/{id}")
	public String liveStream(@PathVariable("id") String streamId,Model model) {
		com.biller.model.yahoo.Results matchesY=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchLive=new com.biller.model.yahoo.Results();
		com.biller.model.yahoo.Results matchFut=new com.biller.model.yahoo.Results();
		try {
			matchesY = cricketService.getFixturesYahoo();
			matchFut = cricketService.getFixFut();
			matchLive = cricketService.getFixLive();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("streamId",streamId);
		model.addAttribute("fixturesP",matchesY);
		model.addAttribute("fixturesF",matchFut);
		model.addAttribute("fixturesL",matchLive);
		return "liveBStream";
	}

}
