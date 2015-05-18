package in.scoreit.clt20.service;

import com.biller.model.Matches;
import com.biller.model.standing.Standings;

public interface Service {
	
	Standings getStandings(String seriesId);

	Matches getFixtures() throws Exception;

}
