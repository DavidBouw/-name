<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:import url="/WEB-INF/jsp/common/header.jsp" />

<table class="favorites_list">
<c:forEach var="mapEntry" items="${favorites}" >
<tr>
    <td class="favorites_list" valign="top">
    <a href="park_details?code=${mapEntry.key}">
    <img src="img/parks/${mapEntry.key.toLowerCase()}.jpg" class="park_image_home" onmouseover="link(this);"onmouseout="unlink(this);"></a>
	<a href="park_detail?code=${mapEntry.key}"><h2>${mapEntry.value[0]}</h2></a>
    <h4>Liked ${mapEntry.value[1]} times!</h4></td>
</tr>
</c:forEach>
</table>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />