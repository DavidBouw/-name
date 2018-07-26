package com.techelevator.model.jdbc;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.model.Forecast;
import com.techelevator.model.ForecastDao;

@Component
public class JDBCForecastDao implements ForecastDao{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCForecastDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Forecast> getFiveDayForecast() {
		List<Forecast> allForecasts = new ArrayList<>();
		String sqlSelectAllForecasts = "SELECT * FROM weather";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllForecasts);
		
		while(results.next()) {
			allForecasts.add(mapRowToForecast(results));
		}
		
		return allForecasts;
	}
	
	public Forecast mapRowToForecast(SqlRowSet results) {
		Forecast forecast = new Forecast();
		
		forecast.setParkCode(results.getString("parkcode"));
		forecast.setFiveDayForecastValue(results.getInt("fivedayforecastvalue"));
		forecast.setLow(results.getInt("low"));
		forecast.setHigh(results.getInt("high"));
		forecast.setForecast(results.getString("forecast"));
		
		return forecast;
	}

}
