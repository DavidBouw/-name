<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
<form method="get" action=""><script>var tips=[""];</script>
<table class="detail_description">
	<tr><td colspan="5"><h4>${park.getDescription()}</h4></td></tr>
	<tr>
    		<td colspan="5">&nbsp;</td>
    </tr>
    <tr>
    		<td class="field_label">Acerage:</td><td class="field_value"><fmt:formatNumber value="${park.getAcreage()}" /></td>
	    	<td class="field_label">Elevation:</td><td class="field_value" colspan="2"><fmt:formatNumber value="${park.getElevationInFeet()}"/> FT</td>
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
    		<input type="submit" value="Convert Units To Fahrenheit" style="border: thin solid blue;">
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
    
<!-- ############### ############### ############### ############### ############### ############### ############### -->
<!-- ############### ############### ############### ############### ############### ############### ############### -->
<!-- ############### ############### ############### ############### ############### ############### ############### -->

		<c:import url="/WEB-INF/jsp/common/weather_realtime_import.jsp" />

<!-- ############### ############### ############### ############### ############### ############### ############### -->
<!-- ############### ############### ############### ############### ############### ############### ############### -->
<!-- ############### ############### ############### ############### ############### ############### ############### -->




    <table class="hide">
    <tr><td colspan="5" class="weather_tip"><div class="weather_tip" id="weather_tip">test</div></td></tr>
    </table>

		<div class="details_footer">
		<hr width="80%">
		<table width="100%"><tr><td align="center"><p class="copyright">Copyright National Park Geek 2018</p></td></tr></table></div>

    </td>
    </tr>
</table>

<script language="javascript">
function fnShowTip(dayNum){
	var tipBox = document.getElementById("weather_tip");
	var weather = weatherArr[dayNum][3];
	var high = weatherArr[dayNum][1];
	var low = weatherArr[dayNum][2];
	//tipBox.innerHTML = weatherArr[dayNum][0] + " - " + weatherArr[dayNum][1] + " - " + weatherArr[dayNum][2] + " - " + weatherArr[dayNum][3]
	
	var tipText = "";
	if (weather.indexOf("snow") != -1) tipText = "There will be snow. Pack your snow shoes! ";
	if (weather.indexOf("rain") != -1) tipText +="Looks like rain. Pack rain gear and wear waterproof shoes! ";
	if (weather.indexOf("thunderstorms") != -1) tipText +="Looks like thunderstorms! Better seek shelter and avoid hiking on exposed ridges! ";
	if (weather.indexOf("sun") != -1) tipText +="Pack your sunblock - it's going to be sunny! ";
	if (high > 75) tipText +="The temperatures will be hot. Bring an extra gallon of water. ";
	if ((high -low) > 20) tipText +="The temperatures will vary. Wear layers of  breathable clothing. ";
	if (low < 20) tipText +="The temperatures will very cold. Wear warm clothing to avoid exposure. ";
	
	var $dayTitle = weatherArr[dayNum][0];	
	tipBox.innerHTML = "<b>Weather Tips for " + $dayTitle + "</b><br>";
	if (tipText == "") tipBox.innerHTML += "Looks like great weather! Enjoy the day!";
	else tipBox.innerHTML += tipText;
	
	tipBox.style="visibility: visible;"
}
function fnHideTip(){
	//fnShowTip(1);
}
//fnShowTip(1);


</script>
<img src="img/parks/${park.getCode().toLowerCase()}.jpg" class="park_image_detail center">
<div class="park_detail_title center">${park.getName()}</div>
<div class="figcaption center">${park.getInspirationalQuote()} - ${park.getInspirationalQuoteSource()}</div>

<!-- due to positioning unique to this page, the footer is handled differently on this page only -->
</form>
</body>
</html>
