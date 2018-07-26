package com.techelevator.npgeek;

import java.util.LinkedHashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.ParkDao;
import com.techelevator.model.SurveyDao;

@Controller
public class SurveyController {
	
    @Autowired
    SurveyDao surveyDao;
    
    @Autowired
    ParkDao parkDao;
	
    @RequestMapping(path={"/surveys", "/survey"}, method=RequestMethod.GET)
	public String showSurveyForms(HttpServletRequest request){
    		request.setAttribute("parksToSurvey", parkDao.getAllParks());
    	
		return "surveys";
	}
    
	@RequestMapping(path={"/surveys", "/survey"}, method=RequestMethod.POST)
	public String handleSurveySubmit(@RequestParam String name, 
			 @RequestParam String emailAddress, 
			 @RequestParam String stateOfResidence,
			 @RequestParam String activityLevel,
			 HttpServletRequest request){
		
		surveyDao.saveSurvey(name, emailAddress, stateOfResidence, activityLevel);
		
		LinkedHashMap<String, Integer> allFavorites = surveyDao.getFavorites();
		
		request.setAttribute("favorites", allFavorites);
		
		return "redirect:/surveys";
	}
}
