<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Saved Outfits</title>
</head>
<body>
	<h1>Select an outfit to view</h1>
	<input type="number" name="id" />
	<div class="container">
		
		<c:forEach var="item" items="${outfit }">
			<c:out value="${item }" >
			<img src="${item }" >
			</c:out>
		
		</c:forEach>
		
	</div>

</body>
</html>