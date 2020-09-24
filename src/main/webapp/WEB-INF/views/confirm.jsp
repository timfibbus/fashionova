<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<meta charset="ISO-8859-1" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body class="back">
<%@ include file="header.jsp"%>
	
	<div class="confirm">
		<h4> This item was added to your WISH LIST :</h4>
		<c:out value="${title }" />
		<img class="card-img-top" src="${thumbnail }"/>
		<br><br>
		<div class="card-body">
		<a class="btn-warning card-text" href="/wishlist">View Wishlist</a>
		<a class="btn-secondary card-text" href="/">Return to homepage</a>
		</div>
	</div>
	
</body>
</html>