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
		
		
		/**
		 * Get a mapp of all parks for the home page
		 */
		//
		HashMap<String, Park> allParks = (HashMap) parkDao.getAllParks();
		request.setAttribute("allParks", allParks);
		return "home";
	}
	
	/**
	 * The displayParkDetails method retreives a hash map of all parks
	 * for display on the home page and the park details page.  It also retreives the
	 * five day weather forecast.  Units and the ark zip code are stored in request
	 * attributes
	 * 
	 * @param request
	 * @return
	 */
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
		
		//load the park zipcode into request attribute
		System.out.println(getZipCode(codeStr));
		request.setAttribute("zipcode", getZipCode(codeStr));
		
		//Get the five day weather data
		ArrayList<Forecast> forecastList = (ArrayList<Forecast>)forecastDao.getFiveDayForecast();
		request.setAttribute("forecastList", forecastList);
		return "park_detail";
	}

	/**
	 * The displayParkDetailsLive method is the same as thedisplayParkDetails method
	 * except that it connects to the version of the park details page which shows 
	 * live weather from OpenWeatherMap.com 
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(path= {"/park_detail_Live_weather", "park_detail_live_weather"})
	public String displayParkDetailsLive(HttpServletRequest request) {
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
		
		//load the park zipcode into request attribute
		System.out.println(getZipCode(codeStr));
		request.setAttribute("zipcode", getZipCode(codeStr));
		
		//Get the five day weather data
		ArrayList<Forecast> forecastList = (ArrayList<Forecast>)forecastDao.getFiveDayForecast();
		request.setAttribute("forecastList", forecastList);
		return "park_detail_live_weather";
	}

	/**
	 * 
	 * @return
	 */
	@RequestMapping(path= {"/survey","surveys"})
	public String displaySurveysPage() {
		return "surveys";
	}
	
	/**
	 * The displayRealTimeWeatherPage method if used purely for testing
	 * and debugging purposes.  It is not linked to any of the live website pages
	 * It allows developer access to the five day forecast without disturbing the
	 * park details page (where the five day forecast is published)
	 * @param request
	 * @return
	 */
	@RequestMapping(path= {"/weather_realtime","weather_realtime"})
	public String displayRealTimeWeatherPage(HttpServletRequest request) {
		//Get the current Park for the park specifics data details
		HashMap<String, Park>allParks = (HashMap) request.getAttribute("allParks");
		if (allParks == null) allParks = (HashMap) parkDao.getAllParks();
		String codeStr = request.getParameter("code");
		request.setAttribute("code", codeStr);

		//load the park zipcode into request attribute
		System.out.println(getZipCode(codeStr));
		request.setAttribute("zipcode", getZipCode(codeStr));

		return "weather_realtime";
	}
	
	/**
	 * getZipCode returns the zip code (String) for the given park code (String)
	 * @param code
	 * @return
	 */
	public String getZipCode(String code) {
		if (code.equals(null)) return null;
		if (code.equals("")) return null;
		if (code.equals("MRNP")) return "20712";
		else if (code.equals("ENP")) return "34139";
		else if (code.equals("GNP")) return "59434";
		else if (code .equals("CVNP")) return "44141";
		else if (code.equals("YNP")) return "82190";
		else if (code.equals("RMNP")) return "80517";
		else if (code.equals("GSMNP")) return "37738";
		else if (code.equals("GTNP")) return "83012";
		else if (code.equals("YNP2")) return "95389";
		else if (code.equals("GCNP")) return "86023";
		else return null;
	}
	
}
