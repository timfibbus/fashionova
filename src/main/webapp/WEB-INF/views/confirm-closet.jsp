<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Confirm Closet</title>
</head>
<body>
	<form action="/closet/add">
	<div>
		<input type="hidden" value="${thumbnail }" name="thumbnail"/>
		<input type="hidden" value="${title }" name="title"/>
		<h2>Type of clothing (top, bottom, accessory, etc):</h2>
		<input type="text" name="type" />
		<h2>Brief description of article:</h2>
		<textarea name="description"></textarea>
	</div>
		<input type="submit" class="btn-primary" value="confirm"/>
	</form>
</body>
</html>