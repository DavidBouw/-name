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
	public LinkedHashMap<String, String[]> getFavorites() {
		LinkedHashMap<String, String[]> allFavorites = new LinkedHashMap<String, String[]>();
		String sqlSelectAllFavorites = "SELECT s.parkcode, p.parkname, COUNT(surveyid) AS surveyCount " + 
				"FROM survey_result AS s " + 
				"JOIN park AS p ON s.parkcode = p.parkcode " +
				"GROUP BY s.parkcode, p.parkname " + 
				"ORDER BY surveyCount DESC, p.parkname ASC";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllFavorites);
		
		while(results.next()) {
			String[] data = new String[2];
			data[0] = results.getString("parkname");
			data[1] = String.valueOf(results.getInt("surveycount"));
			allFavorites.put(results.getString("parkcode"), data);
		}
		
		return allFavorites;
	}
	
	@Override
	public void saveSurvey(String name, String emailAddress,
			String state, String activityLevel) {
		String sqlSelectAllFavorites = "INSERT INTO survey_result (parkcode, emailaddress, state, activitylevel) VALUES (?, ?, ?, ?) RETURNING surveyid";
		jdbcTemplate.queryForObject(sqlSelectAllFavorites, Integer.class,
				name, emailAddress, state, activityLevel);
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
