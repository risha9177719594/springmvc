package in.scoreit.clt20.service.impl;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import org.springframework.stereotype.Service;

import com.biller.model.Match;
import com.biller.model.Matches;
import com.biller.model.ScoreboardApp;
import com.biller.model.standing.Standings;

@Service
public class ServiceImpl implements in.scoreit.clt20.service.Service{
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

}
