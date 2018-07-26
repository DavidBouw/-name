package com.techelevator;


import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

import javax.sql.DataSource;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

import com.techelevator.model.Forecast;
import com.techelevator.model.ForecastDao;
import com.techelevator.model.Park;
import com.techelevator.model.ParkDao;
import com.techelevator.model.SurveyDao;
import com.techelevator.model.jdbc.JDBCForecastDao;
import com.techelevator.model.jdbc.JDBCParkDao;
import com.techelevator.model.jdbc.JDBCSurveyDao;

public class DAOIntegrationTest {

	/* Using this particular implementation of DataSource so that
	 * every database interaction is part of the same database
	 * session and hence the same database transaction */
	private static SingleConnectionDataSource dataSource;
	
	//National Park variables
	private static final String TEST_PARK_CODE = "NWHR";
	private static final String TEST_PARK_NAME = "Nowhere National Park";
	private static final String TEST_STATE = "NW";
	private static final int TEST_ACREAGE = 1000;
	private static final int TEST_ELEVATION = 1600;
	private static final double TEST_MILES_OF_TRAIL = 0;
	private static final int TEST_NUMBER_OF_CAMPSITES = 0;
	private static final String TEST_CLIMATE = "temperate";
	private static final int TEST_YEAR_FOUNDED = -20000000;
	private static final int TEST_ANNUAL_VISITOR_COUNT = 100000;
	private static final String TEST_INSPIRATIONAL_QUOTE = "Sit in the original Nowhereland";
	private static final String TEST_INSPIRATIONAL_QUOTE_SOURCE = "Ringo";
	private static final String TEST_PARK_DESCRIPTION = "Nowhereland is "
			+ "a place where nothing happens.";
	private static final int TEST_ENTRY_FEE = 0;
	private static final int TEST_NUMBER_OF_ANIMAL_SPECIES = 2;
	
	//Weather variables
	private static final int TEST_FIVE_DAY_FORECAST_VALUE = 1;
	private static final int TEST_LOW = 0;
	private static final int TEST_HIGH = 100;
	private static final String TEST_FORECAST = "overcast";
	
	//Survey variables
	private static final String TEST_EMAIL_ADDRESS = "nowhereMan@nowhereland.com";
	private static final String TEST_SURVEY_STATE = "HV";
	private static final String TEST_ACTIVITY_LEVEL = "groovin'";
	
	//Dao variables
	private ParkDao parkDao;
	private ForecastDao forecastDao;
	private SurveyDao surveyDao;
	
	/* Before any tests are run, this method initializes the datasource for testing. */
	@BeforeClass
	public static void setupDataSource() {
		dataSource = new SingleConnectionDataSource();
		dataSource.setUrl("jdbc:postgresql://localhost:5432/npgeek");
		dataSource.setUsername("postgres");
		dataSource.setPassword("postgres1");
		/* The following line disables autocommit for connections 
		 * returned by this DataSource. This allows us to rollback
		 * any changes after each test */
		dataSource.setAutoCommit(false);
	}
	
	/* After all tests have finished running, this method will close the DataSource */
	@AfterClass
	public static void closeDataSource() throws SQLException {
		dataSource.destroy();
	}

	@Before
	public void setup() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		String sqlInsertPark = "INSERT INTO park (parkcode, parkname, "
				+ "state, acreage, elevationinfeet, milesoftrail, "
				+ "numberofcampsites, climate, yearfounded, "
				+ "annualvisitorcount, inspirationalquote, "
				+ "inspirationalquotesource, parkdescription, entryfee, "
				+ "numberofanimalspecies) VALUES (?, ?, ?, ?, ?, ?, ?, ?"
				+ ", ?, ?, ?, ?, ?, ?, ?);";
		
		jdbcTemplate.update(sqlInsertPark, TEST_PARK_CODE, 
				TEST_PARK_NAME, TEST_STATE, TEST_ACREAGE, 
				TEST_ELEVATION, TEST_MILES_OF_TRAIL, 
				TEST_NUMBER_OF_CAMPSITES, TEST_CLIMATE, TEST_YEAR_FOUNDED,
				TEST_ANNUAL_VISITOR_COUNT, TEST_INSPIRATIONAL_QUOTE,
				TEST_INSPIRATIONAL_QUOTE_SOURCE, TEST_PARK_DESCRIPTION,
				TEST_ENTRY_FEE, TEST_NUMBER_OF_ANIMAL_SPECIES);
		
		String sqlInsertWeather = "INSERT INTO weather (parkcode, "
				+ "fivedayforecastvalue, low, high, forecast) VALUES"
				+ "(?, ?, ?, ?, ?);";
		jdbcTemplate.update(sqlInsertWeather, TEST_PARK_CODE, 
				TEST_FIVE_DAY_FORECAST_VALUE, TEST_LOW, TEST_HIGH,
				TEST_FORECAST);
		
		String sqlInsertSurvey = "INSERT INTO survey_result (parkcode,"
				+ " emailaddress, state, activitylevel) VALUES "
				+ "(?, ?, ?, ?);";
		jdbcTemplate.update(sqlInsertSurvey, TEST_PARK_CODE, 
				TEST_EMAIL_ADDRESS, TEST_SURVEY_STATE, TEST_ACTIVITY_LEVEL);
		
		parkDao = new JDBCParkDao(dataSource);
		forecastDao = new JDBCForecastDao(dataSource);
		surveyDao = new JDBCSurveyDao(dataSource);
	}
	
	/* After each test, we rollback any changes that were made to the database so that
	 * everything is clean for the next test */
	@After
	public void rollback() throws SQLException {
		dataSource.getConnection().rollback();
	}
	
	/* This method provides access to the DataSource for subclasses so that 
	 * they can instantiate a DAO for testing */
	public DataSource getDataSource() {
		return dataSource;
	}
	
	@Test
	public void get_all_parks_test() {
		HashMap<String, Park> parks = new HashMap<String, Park>();
		parks = parkDao.getAllParks();
		assertNotNull(parks);
		assertTrue(parks.size() >= 1);
	}
	
	@Test
	public void get_forecast_test() {
		ArrayList<Forecast> forecast = new ArrayList<>();
		forecast = (ArrayList<Forecast>) forecastDao.getFiveDayForecast();
		assertNotNull(forecast);
		assertTrue(forecast.size() >= 1);
	}
	
	@Test
	public void get_all_favorites_test() {
		LinkedHashMap<String, String[]> favorites = new LinkedHashMap<>();
		favorites = surveyDao.getFavorites();
		assertNotNull(favorites);
		assertTrue(favorites.size() >= 1);
	}
}
