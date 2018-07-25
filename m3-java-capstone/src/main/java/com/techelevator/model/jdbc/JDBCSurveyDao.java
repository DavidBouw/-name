package com.techelevator.model.jdbc;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.model.Survey;
import com.techelevator.model.SurveyDao;

@Component
public class JDBCSurveyDao implements SurveyDao{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCSurveyDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Survey> getAllSurveys() {
		List<Survey> allSurveys = new ArrayList<>();
		String sqlSelectAllSurveys = "SELECT * FROM survey_result";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllSurveys);
		
		while(results.next()) {
			allSurveys.add(mapRowToSurvey(results));
		}
		
		return allSurveys;
	}
	
	@Override
	public void saveSurvey(Survey survey) {
		
	}
	
	private Survey mapRowToSurvey(SqlRowSet results) {
		Survey survey = new Survey();
		
		survey.setId(results.getLong("surveyid"));
		survey.setParkCode(results.getString("parkcode"));
		survey.setEmailAddress(results.getString("emailaddress"));
		survey.setState(results.getString("state"));
		survey.setActivityLevel(results.getString("activitylevel"));
		
		return survey;
	}

}
