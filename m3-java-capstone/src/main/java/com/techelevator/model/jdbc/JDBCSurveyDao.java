package com.techelevator.model.jdbc;

import java.util.ArrayList;
import java.util.LinkedHashMap;
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
	public LinkedHashMap<String, Integer> getFavorites() {
		LinkedHashMap<String, Integer> allFavorites = new LinkedHashMap<String, Integer>();
		String sqlSelectAllFavorites = "SELECT s.parkcode, COUNT(surveyid) AS surveyCount " + 
				"FROM survey_result AS s " + 
				"GROUP BY s.parkcode " + 
				"ORDER BY surveyCount DESC;";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllFavorites);
		
		while(results.next()) {
			allFavorites.put(results.getString("parkcode"), results.getInt("surveycount"));
		}
		
		return allFavorites;
	}
	
	@Override
	public void saveSurvey(String name, String emailAddress,
			String state, String activityLevel) {
		String sqlSelectAllFavorites = "INSERT INTO survey_result (parkcode, emailaddress, state, activitylevel) VALUES (?, ?, ?, ?)";
		jdbcTemplate.queryForObject(sqlSelectAllFavorites, Integer.class,
				name, emailAddress, state, activityLevel);
		jdbcTemplate.queryForRowSet(sqlSelectAllFavorites);
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
