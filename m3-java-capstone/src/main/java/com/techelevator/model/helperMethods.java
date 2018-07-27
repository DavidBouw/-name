package com.techelevator.model;
import java.text.DateFormatSymbols;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import org.springframework.jdbc.support.rowset.SqlRowSet;
import com.techelevator.model.Park;

public class helperMethods {
	
	//Receive input from the user
	public static String getInput() {
		Scanner inputReader = new Scanner(System.in);
		String userInput;
		userInput = inputReader.nextLine();
		return userInput;
	}
	
	//returns a string formatted as currency
	public static String formatCurrency(double amt) {
		NumberFormat formatter = NumberFormat.getCurrencyInstance();
		return formatter.format(amt);
	}	
	
	//returns a string formatted as a number with commas at the thousands
	public static String formatNumber(double num) {
		NumberFormat.getNumberInstance(Locale.US).format(35634646);
		NumberFormat formatter = NumberFormat.getNumberInstance(Locale.US);
		return formatter.format(num);
	}	
	
	//returns a string formatted as a date in a MM-DD-YYYY format	
	public static String formatDate(Date date) {
		String newstring = new SimpleDateFormat("MM-dd-yyyy").format(date);
		return newstring;
	}	
	
	//returns a string formatted as a multi-line paragraph
	public static String formatParagragh(String text, Integer colWidth) {
		String formattedStr = "";
		String lineStr = "";
		String[] textArray = text.split(" ");
		for (String x : textArray) {
			if ((lineStr + x).length() > colWidth) {
				formattedStr += "\n" + lineStr;
				lineStr = "";
				}
			else lineStr += " " + x;
		}
		if (lineStr != "") formattedStr += "\n" + lineStr;
		return formattedStr;
	}	
	
	//returns a string with spaces padding the column for alignment purposes
	public static String formatColumn(String colText, Integer colWidth, boolean leftJustify) {		
		String str50Spaces = "                                                  ";
		String paddedResult;
		if (leftJustify) paddedResult = (colText + str50Spaces).substring(0, colWidth);
		else paddedResult = (str50Spaces + colText).substring(colWidth - colText.length());
		return paddedResult;
	}

	//returns the name of the month
	public String getMonth(int month) {
		return new DateFormatSymbols().getMonths()[month-1];
	}
	
	
	//verfies that user-provided date exists
	public static boolean isValidDate(String date) {
		DateTimeFormatter f = DateTimeFormatter.ofPattern( "uuuu-MM-dd" );
		try {
		    LocalDate localDateBad = LocalDate.parse( (CharSequence) date , f );
		} catch ( DateTimeParseException e ) {
			return false;
		}
		return true;
	}
	public static String convertUnits(double num, String fromUnits, String toUnits) {
		if (fromUnits.equals(toUnits)) return String.valueOf((int) num);
		if (toUnits.equals("fahrenheit")) return String.valueOf((int)((num * 1.8) + 32));
		else if (toUnits.equals( "celcius")) return String.valueOf((int)((num -32) / 1.8));
		else if (toUnits.equals("feet")) return String.valueOf((int)(num * 3.28084));
		else if (toUnits.equals("meters")) return String.valueOf((int)(num * 0.348));
		else if (toUnits.equals("miles")) return String.valueOf((int)(num*0.621371));
		else if (toUnits.equals("km")) return String.valueOf((int)(num * 1.60934));
		return String.valueOf((int) num);
	}

}
