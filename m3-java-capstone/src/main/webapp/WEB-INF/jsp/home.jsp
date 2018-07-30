<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/jsp/common/header.jsp" />
<table class="parks_list">
<c:forEach var="mapEntry" items="${allParks}" >
<tr>
    <td class="parks_list" valign="top">
    <a href="park_detail_live_weather?code=${mapEntry.value.getCode()}">
    <img src="img/parks/${mapEntry.value.getCode().toLowerCase()}.jpg" class="park_image_home" onmouseover="link(this);"onmouseout="unlink(this);"></a>
	<a href="park_detail_live_weather?code=${mapEntry.value.getCode()}"><h2>${mapEntry.value.getName()}</h2></a>
    <h4>${mapEntry.value.getDescription()}</h4></td>
</tr>
</c:forEach>
</table>
<script>function link(image){image.style="background-color: #5eca33;"}
function unlink(image){image.style="background-color: #006ecb;"}</script>
<c:import url="/WEB-INF/jsp/common/footer.jsp" />