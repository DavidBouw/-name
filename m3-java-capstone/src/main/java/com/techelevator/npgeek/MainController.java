package com.techelevator.npgeek;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(path= {"/","home"})
	public String displayHomePage() {
		return "home";
	}
	
	@RequestMapping("/park_detail")
	public String displayAlien_age() {
		return "park_detail";
	}
	
	
}
