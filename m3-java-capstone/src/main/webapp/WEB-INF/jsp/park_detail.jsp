<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
<table class="detail_description center">
	<tr><td colspan="4"><h4>${park.getDescription()}</h4></td></tr>
    <tr>
    		<td class="field_label">Acerage:</td><td class="field_value">${park.getAcreage()}</td>
	    	<td class="field_label">Elevation:</td><td class="field_value">${park.getElevationInFeet()}</td>
    </tr>
    <tr>
    		<td class="field_label">Miles of Trail:</td><td class="field_value"><fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = "${park.getMilesOfTrail()}" /></td>
    		<td class="field_label">Number of Campsites:</td><td class="field_value">${park.getNumberOfCampsites()}</td>
    </tr>
    <tr>
    		<td class="field_label">Climate:</td><td class="field_value">${park.getClimate()}</td>
    		<td class="field_label">Annual Visitor Count:</td><td class="field_value">${park.getAnnualVisitorCount()}</td>
    </tr>
    <tr>
    		<td class="field_label">Entrance Fee:</td><td class="field_value">${park.getEntryFee()}</td>
    		<td class="field_label">Number of Animal Species:</td><td class="field_value">${park.getNumberOfAnimalSpecies()}</td>
    </tr>
    <tr><td colspan="4"><br>
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
		    <td class="${css}" nowrap><div class="weather_card"><h3>${weekday_name}</h3><br>
		    	${daily_forecast.getForecast()}<br>
		    <img src="img/weather/${img}.png"><br>
		    	High: ${daily_forecast.getLow()} Low: ${daily_forecast.getHigh()}
		    	</div></td>
    </c:when>    
	</c:choose>
    </c:forEach>
    </tr>
    </table>
    </td></tr>
</table>
<img src="img/parks/${park.getCode().toLowerCase()}.jpg" class="park_image_detail center">
<div class="park_detail_title center">${park.getName()}</div>
<div class="figcaption center">${park.getInspirationalQuote()} - ${park.getInspirationalQuoteSource()}</div>

<!-- due to positioning unique to this page, the footer is handled differently on this page only -->
</div><br><br><br><div class="details_footer">
<hr width="80%">
<table width="100%"><tr><td align="center"><p class="copyright">Copyright National Park Geek 2018</p></td></tr></table></div>
</body>
</html>
