package com.techelevator.model;

import java.util.LinkedHashMap;

public interface SurveyDao {
	public LinkedHashMap<String, Integer> getFavorites();
	
	public void saveSurvey(String name, String emailAddress,
			String state, String activityLevel);
}
