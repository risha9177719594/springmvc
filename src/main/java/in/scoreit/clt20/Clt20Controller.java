package in.scoreit.clt20;

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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import com.biller.model.Match;
import com.biller.model.Matches;
import com.biller.model.ScoreboardApp;
import com.biller.model.news.Item;
import com.biller.model.standing.Standings;
import com.biller.service.ScoreService;

@Controller
public class Clt20Controller {
	@RequestMapping("")
	public String home(Model model) {
		System.out.println("home");
		String seriesId="5028";
		Standings standings = scoreService.getStandings(seriesId);		
		String stn = standings.getHeader().getResult();
		StringTokenizer t= new StringTokenizer(stn,",");
		Map<String,String> stMap = new HashMap<String,String>();
		/*while(t.hasMoreTokens()){
			String s = t.nextToken();
			String s1=s.trim();
			int pts = Integer.parseInt(s1.substring(4));
			stMap.put(s1.substring(0, 3), pts+"");
		}*/
		model.addAttribute("standings", stMap);
		model.addAttribute("standingsdi", standings);
		Matches matches=new Matches();
		com.biller.model.yahoo.Matches matchesY=new com.biller.model.yahoo.Matches();
		String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetScoreboardAppContent?%20HTTP/1.1";
		try {
			matches = scoreService.getFixtures();
			//matchesY = scoreService.getFixturesYahoo();
			List<Item> itm = scoreService.getNews();
			model.addAttribute("news",itm);
			URL obj = new URL(url);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();

			// optional default is GET
			con.setRequestMethod("GET");

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
			Match mm=new Match();
			Iterator itr=scoreboardApp.getMs().iterator();
			while(itr.hasNext()){
				Matches mtchs=(Matches)itr.next();
				if(mtchs.getMat()!=null){
				Iterator itMtchs=mtchs.getMat().iterator();
				while(itMtchs.hasNext()){
					Match mtch=(Match)itMtchs.next();
					if(mtch.getStatus()=="Live"){
						mm=mtch;
						String date = mm.getStartDate();
						mm.setStartDate(date.substring(0, 10));
					}
				}}
			}

			model.addAttribute("match", mm);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("fixtures",matches);
		model.addAttribute("teamsDet",standings);
		
		
		return "home";
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
	@RequestMapping("/test")
	public String home1(Model model) {
		System.out.println("home");
		return "home";
	}
	@Autowired
    private ScoreService scoreService;
	@RequestMapping("/1")
	public String home11(Model model) {
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

}
