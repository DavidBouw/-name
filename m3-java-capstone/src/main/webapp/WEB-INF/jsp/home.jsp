<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/jsp/common/header.jsp" />
Home Page2
<table>
<c:forEach var="park" items="${parks}" >
<tr>
    <td>${park.Name} ${image}</td>
</tr>
</c:forEach>
</table>
<c:import url="/WEB-INF/jsp/common/footer.jsp" />