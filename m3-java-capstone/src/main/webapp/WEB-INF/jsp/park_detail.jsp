<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
<form method="get" action=""><script>var tips=[""];</script>
<table class="detail_description center">
	<tr><td colspan="5"><h4>${park.getDescription()}</h4></td></tr>
    <tr>
    		<td class="field_label">Acerage:</td><td class="field_value"><fmt:formatNumber value="${park.getAcreage()}" /></td>
	    	<td class="field_label">Elevation:</td><td class="field_value" colspan="2"><fmt:formatNumber value="${park.getElevationInFeet()}"/> ft</td>
    </tr>
    <tr>
    		<td class="field_label">Miles of Trail:</td><td class="field_value"><fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = "${park.getMilesOfTrail()}" /></td>
    		<td class="field_label">Number of Campsites:</td><td class="field_value" colspan="2">${park.getNumberOfCampsites()}</td>
    </tr>
    <tr>
    		<td class="field_label">Climate:</td><td class="field_value">${park.getClimate()}</td>
    		<td class="field_label">Annual Visitor Count:</td><td class="field_value" colspan="2"><fmt:formatNumber value="${park.getAnnualVisitorCount()}"/></td>
    </tr>
    <tr>
    		<td class="field_label">Entrance Fee:</td><td class="field_value"><fmt:formatNumber value="${park.getEntryFee()}" type="currency"/></td>
    		<td class="field_label">Number of Animal Species:</td><td class="field_value" colspan="2"><fmt:formatNumber value="${park.getNumberOfAnimalSpecies()}"/></td>
    </tr>
    <tr>
    		<td colspan="5" class="convert_units">
	<c:choose>
    <c:when test="${weather_units == 'celcius'}">
    		<c:url var="units" value="C"/>
    		<input type="hidden" name="weather_units" value="fahrenheit">
    		<input type="hidden" name="code" value="${code}">
    		<input type="submit" value="Convert Units To Fahrenheit">
    </c:when>
    <c:otherwise>
    		<c:url var="units" value="F"/>
    		<input type="hidden" name="weather_units" value="celcius">
    		<input type="hidden" name="code" value="${code}">
    		<input type="submit" value="Convert Units To Celcius">
    </c:otherwise>
    </c:choose>

    		&nbsp;&nbsp;
    		</td>
    </tr>
    <tr><td colspan="5">
    <table>	
    <tr>    
    	<c:forEach var="daily_forecast" items="${forecastList}" >
    	<c:choose>
    <c:when test="${daily_forecast.getParkCode().equals(park.getCode())}">
 	<!-- get the title  -->
 	 <c:url var="css" value="weather_5day" />     
	<c:choose>
    		<c:when test="${daily_forecast.getFiveDayForecastValue() == 1}">
 			 <c:url var="weekday_name" value="Today" />     
		 	 <c:url var="css" value="weather_today" />     
    		</c:when>    
    		<c:when test="${daily_forecast.getFiveDayForecastValue() == 2}">
 			<c:url var="weekday_name" value="Tomorrow" />     
    		</c:when>    
    		<c:when test="${daily_forecast.getFiveDayForecastValue() == 3}">
 			<c:url var="weekday_name" value="Wednesday" />     
    		</c:when>    
    		<c:when test="${daily_forecast.getFiveDayForecastValue() == 4}">
 			<c:url var="weekday_name" value="Thursday" />     
    		</c:when>        		
    		<c:otherwise>
 			<c:url var="weekday_name" value="Friday" />     
    		</c:otherwise>
	</c:choose>
	<c:choose>
    		<c:when test="${daily_forecast.getForecast() == 'partly cloudy'}">
 			<c:url var="img" value="partlyCloudy" />     
    		</c:when>    
    		<c:otherwise>
 			<c:url var="img" value="${daily_forecast.getForecast()}"/>     
    		</c:otherwise>
	</c:choose>
		    <td class="${css}" nowrap><div class="weather_card" onmouseover="fnShowTip(${daily_forecast.getFiveDayForecastValue()})"
		    onmouseout="fnHideTip()"><h3 id="day_title_${daily_forecast.getFiveDayForecastValue()}">${weekday_name}</h3><br>
		    	${daily_forecast.getForecast()}<br>
		    <img src="img/weather/${img}.png"><br>
		    <span class="weather_label">High:</span> <span class="weather_value">${daily_forecast.getConvertedLow(weather_units)}&deg;${units}</span> 
		    <span class="weather_label"> Low:</span> <span class="weather_value">${daily_forecast.getConvertedHigh(weather_units)}&deg;${units}</span>
		    	</div><script>tips.push('${daily_forecast.getWeatherTips()}');</script></td>
    </c:when>    
	</c:choose>
    </c:forEach>
    </tr>
    <tr><td colspan="5" class="weather_tip"><div class="weather_tip" id="weather_tip"></div></td></tr>
    </table>
    </td></tr>
</table>
<script language="javascript">
function fnShowTip(dayNum){
	var tipBox = document.getElementById("weather_tip");
	var $dayTitle = document.getElementById("day_title_" + dayNum).innerHTML;
	tipBox.innerHTML = "<b>" + $dayTitle + "</b><br>";
	tipBox.innerHTML += tips[dayNum];
	tipBox.style="visibility: visible;"
}
function fnHideTip(){
//	var tipBox = document.getElementById("weather_tip");
//	tipBox.innerHTML = tips[1];
	//tipBox.style="visibility: hidden;"
	fnShowTip(1);
}
//Load the initial day's tip
fnShowTip(1);
</script>
<img src="img/parks/${park.getCode().toLowerCase()}.jpg" class="park_image_detail center">
<div class="park_detail_title center">${park.getName()}</div>
<div class="figcaption center">${park.getInspirationalQuote()} - ${park.getInspirationalQuoteSource()}</div>

<!-- due to positioning unique to this page, the footer is handled differently on this page only -->
</div></form><br><br><br><div class="details_footer">
<hr width="80%">
<table width="100%"><tr><td align="center"><p class="copyright">Copyright National Park Geek 2018</p></td></tr></table></div>
</body>
</html>
