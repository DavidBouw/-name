package com.techelevator.model;

import java.util.List;

public interface ForecastDao {
	public List<Forecast> getFiveDayForecast();
}
