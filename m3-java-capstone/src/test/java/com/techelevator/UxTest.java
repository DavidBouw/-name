package com.techelevator;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;
import org.openqa.selenium.JavascriptExecutor;


public class UxTest {

	private static WebDriver webDriver;
	private static SingleConnectionDataSource dataSource;
	
	@BeforeClass
	public static void setupDataSource() {
		dataSource = new SingleConnectionDataSource();
		dataSource.setUrl("jdbc:postgresql://localhost:5432/npgeek");
		dataSource.setUsername("postgres");
	}
	
	@BeforeClass
	public static void openWebBrowserForTesting() {
		
		String homeDir = System.getProperty("user.home");
		
		System.setProperty("webdriver.chrome.driver", homeDir+"/dev-tools/chromedriver/chromedriver");
		webDriver = new ChromeDriver();
	}

	@Before
	public void openHomePage() {
		webDriver.get("http://localhost:8080/m3-java-capstone/home");
	}
	
	@AfterClass
	public static void closeWebBrowser() {
		webDriver.close();
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.execute("DELETE FROM survey_result");
		dataSource.destroy();
	}
	
	@Test
	public void first_and_last_parks_displayed_on_home_page() {
		WebElement evergladesTitleH2 = webDriver.findElement(By.xpath("/html/body/div/table/tbody/tr[2]/td/a[2]/h2"));
		WebElement grandCanyonTitleH2 = webDriver.findElement(By.xpath("/html/body/div/table/tbody/tr[10]/td/a[2]/h2"));
		assertEquals("Everglades National Park", evergladesTitleH2.getText());
		assertEquals("Grand Canyon National Park", grandCanyonTitleH2.getText());
	}
	
	@Test
	public void header_can_be_found_by_tag_name_on_multiple_pages() {
		WebElement header = webDriver.findElement(By.tagName("header"));
		assertNotNull(header);
		//navigate to 
		webDriver.findElement(By.xpath("/html/body/nav/ul/li[2]/a")).click();
		WebElement header2 = webDriver.findElement(By.tagName("header"));
		assertNotNull(header2);
	}
	
	@Test
	public void forms_can_be_edited_and_submitted() {
		webDriver.findElement(By.xpath("/html/body/nav/ul/li[2]/a")).click();	
		
		Select stateField = new Select(webDriver.findElement(By.name("name")));
		stateField.selectByVisibleText("Grand Canyon National Park");
		// To interact with a <select> element, wrap the WebElement in a Select object
		
		WebElement emailField = webDriver.findElement(By.xpath("/html/body/div/form/div[2]/input"));
		emailField.sendKeys("test@test.com");
		
		Select stateOfResidenceField = new Select(webDriver.findElement(By.name("stateOfResidence")));
		stateOfResidenceField.selectByVisibleText("WY");
		
		webDriver.findElement(By.id("Extreme")).click();
		
		WebElement submitButton = webDriver.findElement(By.className("formSubmitButton"));
		submitButton.click();
		
		/* Elements without an id can be found using an xPath expression.
		 * However, finding elements by xPath should generally be avoided 
		 * as it is slow and makes for brittle tests. */
		WebElement entryToFind = webDriver.findElement(By.xpath("/html/body/div/table/tbody/tr[0]/td/h4"));
		assertEquals("Liked 1 times!", entryToFind.getText());
	}
}
