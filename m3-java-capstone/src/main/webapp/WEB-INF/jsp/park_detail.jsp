<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
<table border="1">
<tr>
    <td>
    <div class="image_backdrop" style="background-image: url('img/parks/details_bg.png')">
    <img src="img/parks/${park.getCode().toLowerCase()}.jpg" class="park_image_detail center"></div>
	<h2>${park.getName()}</h2>
    <h4>${park.getDescription()}</h4></td>
</tr>
    <tr><td><h3>Acerage:</h3></td><td><h4>${park.getAcreage()}</h4></td></tr>
    <tr><td><h3>Elevation:</h3></td><td><h4>${park.getElevationInFeet()}</h4></td></tr>
    <tr><td><h3>Miles of Trail:</h3></td><td><h4>${park.getMilesOfTrail()}</h4></td></tr>
    <tr><td><h3>Number of Campsites:</h3></td><td><h4>${park.getNumberOfCampsites()}</h4></td></tr>
    <tr><td><h3>CLimate:</h3></td><td><h4>${park.getClimate()}</h4></td></tr>
    <tr><td><h3>Annual Visitor Count:</h3></td><td><h4>${park.getAnnualVisitorCount()}</h4></td></tr>
    <tr><td><h3>Quote:</h3></td><td><h4>${park.getInspirationalQuote()}</h4></td></tr>
    <tr><td><h3>Quote SOurce:</h3></td><td><h4>${park.getInspirationalQuoteSource()}</h4></td></tr>
    <tr><td><h3>Entrance Fee:</h3></td><td><h4>${park.getEntryFee()}</h4></td></tr>
    <tr><td><h3>Number of Animal Species:</h3></td><td><h4>${park.getNumberOfAnimalSpecies()}</h4></td></tr>
</table>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />