package com.techelevator.model;

import java.util.List;

public interface SurveyDao {
	public List<Survey> getAllSurveys();
	
	public void saveSurvey(Survey survey);
}
