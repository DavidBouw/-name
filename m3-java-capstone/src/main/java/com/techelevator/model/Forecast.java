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
		if (forecast.equals("snow")) tips +="<br>There will be snow.<br><br>Pack your snow shoes!<br>";
		if (forecast.equals("rain")) tips +="<br>Looks like rain.<br><br>Pack rain gear and wear waterproof shoes!<br>";
		if (forecast.equals("thunderstorms")) tips +="<br>Looks like thunderstorms!<br><br>Better seek shelter and avoid hiking on exposed ridges!<br>";
		if (forecast.equals("sun")) tips +="<br>Pack your sunblock - it's going to be sunny!<br>";
		if (high > 75) tips +="<br>The temperatures will be hot.<br><br>Bring an extra gallon of water.<br>";
		if ((high -low) > 20) tips +="<br>The temperatures will vary.<br><br>Wear layers of  breathable clothing.<br>";
		if (low < 20) tips +="<br>The temperatures will very cold.<br><br>Wear warm clothing to avoid exposure.<br>";
		
		return tips;
	}

}
