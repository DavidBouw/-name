package com.techelevator.npgeek;

import java.util.LinkedHashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.ParkDao;
import com.techelevator.model.Survey;
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
	public String showSurveyForms(@RequestParam String firstName, 
			 @RequestParam Long surveyId,  
			 @RequestParam String parkCode, 
			 @RequestParam String emailAddress, 
			 @RequestParam String state,
			 @RequestParam String activityLevel,
			 ModelMap model){
		LinkedHashMap<String, Integer> allFavorites = surveyDao.getFavorites();
		
		Survey userSurvey = new Survey();
		userSurvey.setId(surveyId);
		userSurvey.setParkCode(parkCode);
		userSurvey.setEmailAddress(emailAddress);
		userSurvey.setState(state);
		userSurvey.setActivityLevel(activityLevel);
		
		
		model.put("",null);
		
		return "surveys";
	}
}
