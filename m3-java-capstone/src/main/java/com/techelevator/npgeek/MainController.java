package com.techelevator.npgeek;
import java.awt.List;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.eclipse.jetty.websocket.api.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.techelevator.model.Forecast;
import com.techelevator.model.ForecastDao;
import com.techelevator.model.Park;
import com.techelevator.model.ParkDao;

@Controller
public class MainController {
	@Autowired
	private ParkDao parkDao;
	
	@Autowired
	private ForecastDao forecastDao;
	
	@RequestMapping(path= {"/","home"})
	public String displayHomePage(HttpServletRequest request) {
		
		//Get a mapp of all parks for the home page
		HashMap<String, Park> allParks = (HashMap) parkDao.getAllParks();
		request.setAttribute("allParks", allParks);
		return "home";
	}
	@RequestMapping(path= {"/park_detail", "park_details"})
	public String displayParkDetails(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		//Get the current Park for the park specifics data details
		HashMap<String, Park>allParks = (HashMap) request.getAttribute("allParks");
		if (allParks == null) allParks = (HashMap) parkDao.getAllParks();
		String codeStr = request.getParameter("code");
		request.setAttribute("code", codeStr);
		Park park = (Park) allParks.get(codeStr);
		request.setAttribute("park", park);
		
		//load the units
		if (request.getParameter("weather_units") != null) {
			request.setAttribute("weather_units", request.getParameter("weather_units"));
			session.setAttribute("weather_units", request.getParameter("weather_units"));
		}
		else if (session.getAttribute("weather_units") != null) {
			request.setAttribute("weather_units", session.getAttribute("weather_units"));
		}
		else request.setAttribute("weather_units", "fahrenheit");
		
		//Get the five day weather data
		ArrayList<Forecast> forecastList = (ArrayList<Forecast>)forecastDao.getFiveDayForecast();
		request.setAttribute("forecastList", forecastList);
		return "park_detail";
	}
	
	@RequestMapping(path= {"/survey","surveys"})
	public String displaySurveysPage() {
		return "surveys";
	}
	
	@RequestMapping(path= {"/weather_realtime","weather_realtime"})
	public String displayRealTimeWeatherPage() {
		return "weather_realtime";
	}
	@RequestMapping(path= {"/weather","weather"})
	public String displayWeatherJSPage() {
		return "weather";
	}
	
}
