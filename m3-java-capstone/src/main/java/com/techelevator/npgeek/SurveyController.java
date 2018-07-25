package com.techelevator.npgeek;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SurveyController {

	@RequestMapping(path={"/survey"}, method=RequestMethod.GET)
	public String showStocksPage(ModelMap map){
		List<Survey> stocks = getAllSurveys();
		
		map.put("stocks", stocks);
		
		return "stocks/stocksLandingPage";
	}
	
	@RequestMapping(path={"/stockPurchase"}, method=RequestMethod.GET)
	public String buyStockForm(){
		return "stocks/stocksPurchasePage";
	}
	
	@RequestMapping(path={"/stockPurchase"}, method=RequestMethod.POST)
	public String buyStock(@RequestParam String ticker, @RequestParam int shares){
		System.out.println("You bought " + shares + " shares of " + ticker + "!");
		return "stocks/stocksLandingPage";
	}
}
