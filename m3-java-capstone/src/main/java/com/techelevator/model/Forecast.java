package com.techelevator.model;

public class Forecast {
	private String parkCode;
	private int fiveDayForecastValue;
	private int low;
	private int high;
	private String forecast;

	public String getParkCode() {
		return parkCode;
	}

	public void setParkCode(String parkCode) {
		this.parkCode = parkCode;
	}

	public int getFiveDayForecastValue() {
		return fiveDayForecastValue;
	}

	public void setFiveDayForecastValue(int fiveDayForecastValue) {
		this.fiveDayForecastValue = fiveDayForecastValue;
	}

	public int getLow() {
		return low;
	}

	public void setLow(int low) {
		this.low = low;
	}

	public int getHigh() {
		return high;
	}

	public void setHigh(int high) {
		this.high = high;
	}

	public String getForecast() {
		return forecast;
	}

	public void setForecast(String forecast) {
		this.forecast = forecast;
	}
	public int getConvertedHigh(String units) {
		return Integer.parseInt(helperMethods.convertUnits((double)high, "fahrenheit", units));
	}
	public int getConvertedLow(String units) {
		return Integer.parseInt(helperMethods.convertUnits((double)low, "fahrenheit", units));
	}
	
	public String getWeatherTips() {
		String tips = "";
		if (forecast.equals("snow")) tips +="There will be snow. Pack your snow shoes! ";
		if (forecast.equals("rain")) tips +="Looks like rain. Pack rain gear and wear waterproof shoes! ";
		if (forecast.equals("thunderstorms")) tips +="Looks like thunderstorms! Better seek shelter and avoid hiking on exposed ridges! ";
		if (forecast.equals("sun")) tips +="Pack your sunblock - it's going to be sunny! ";
		if (high > 75) tips +="The temperatures will be hot. Bring an extra gallon of water. ";
		if ((high -low) > 20) tips +="The temperatures will vary. Wear layers of  breathable clothing. ";
		if (low < 20) tips +="The temperatures will very cold. Wear warm clothing to avoid exposure. ";
		
		return tips;
	}

}
