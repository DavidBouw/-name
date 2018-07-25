<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>National Parks Geek</title>
    <c:url value="/css/style.css" var="cssHref" />
    <link rel="stylesheet" href="${cssHref}">
</head>

<body>
    <header>
    		<c:url value="/" var="homePageHref" />
    		<c:url value="/img/logo.png" var="logoSrc" />
        <a href="${homePageHref}">
        		<img src="${logoSrc}" alt="National Park Geek logo" />
        </a>
        <h1>National Park Geek</h1>
        <p>Basic park text here.Basic park text here.Basic park text here.Basic park text here.Basic park text here.Basic park text here.Basic park text here.Basic park text here.</p>
    </header>
    <nav>
        <ul>
            <li><a href="home">Home</a></li>
            <li><a href="survey">Survey</a></li>
        </ul>
    </nav>