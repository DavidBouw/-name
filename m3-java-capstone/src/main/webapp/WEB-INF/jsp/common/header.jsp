<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>National Parks Geek</title>
	<c:url value="/css/style.css" var="cssHref" />
	<link rel="stylesheet" href="css/style.css">
    <script src="https://s3.amazonaws.com/codecademy-content/projects/jquery.min.js"></script>	
    
</head>
<c:choose>
    <c:when test="<%=request.getRequestURI().contains(\"home.jsp\")%>">
		 	<c:url var="style" value="background-image: url('img/parks/body_bg_main.png');background-repeat: repeat-x;" />     
    </c:when>    
    <c:otherwise>
     	<c:url var="style" value="background-image: url('img/parks/body_bg.png');background-repeat: repeat-x;" />     
    </c:otherwise>
</c:choose>
<body style="${style}">
	<header>
	<div class="tagline"><h1>Plan your next visit to a National Park</h1></div>
	<a href="/"><img src="img/logo.png" alt="National Park Geek logo" /></a>
	</header>
	<nav>
		<ul>
		<li><a href="home">Home</a></li>
		<li><a href="favorites">Favorite Parks</a></li>
		<li><a href="survey">Take Survey</a></li>
		</ul>
	</nav>
	<div class="main_content">
