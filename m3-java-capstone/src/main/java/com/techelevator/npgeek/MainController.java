package com.techelevator.npgeek;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(path= {"/","home"})
	public String displayHomePage() {
		return "home";
	}
	
	@RequestMapping(path= {"/park_detail","/park_details"})
	public String displayParkDetails() {
		return "park_detail";
	}
	
	@RequestMapping(path= {"/survey","surveys"})
	public String displaySurveysPage() {
		return "surveys";
	}
}
