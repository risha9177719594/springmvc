package com.biller.dao;

import com.biller.model.OnTheRun;

public interface CricketDAO {

	OnTheRun getONR();

	void saveONR(OnTheRun onr);
	
}
