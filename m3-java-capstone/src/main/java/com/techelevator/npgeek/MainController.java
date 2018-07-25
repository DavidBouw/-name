package com.techelevator.npgeek;
import java.awt.List;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.techelevator.model.Park;
import com.techelevator.model.ParkDao;
import com.techelevator.ssg.model.forum.ForumDao;

@Controller
public class MainController {
	@Autowired
	private ParkDao parkDao;
	
	@RequestMapping(path= {"/","home"})
	public String displayHomePage() {
		return "home";
	}
	
	@RequestMapping(path= {"/park_detail","/park_details"})
	public String displayParkDetails(HttpServletRequest request) {
//		List<Park> currPark = new List {parkDao.getAllParks()};
		request.setAttribute("currPark", park);
		return "park_detail";
	}
	
	@RequestMapping(path= {"/survey","surveys"})
	public String displaySurveysPage() {
		return "surveys";
	}
	
}
