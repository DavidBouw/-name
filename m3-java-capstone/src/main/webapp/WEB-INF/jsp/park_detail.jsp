<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
<table class="parks_list">
<tr>
    <td class="parks_list" valign="top">
    <img src="img/parks/${park.getCode().toLowerCase()}.jpg" class="park_image_home">
	<h2>${park.getName()}</h2>
    <h4>${park.getDescription()}</h4></td>
</tr>
</table>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />