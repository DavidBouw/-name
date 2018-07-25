package com.techelevator.model;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JDBCForecastDao implements ForecastDao{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCForecastDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Forecast> getFiveDayForecast() {
		// TODO Auto-generated method stub
		return null;
	}

}
