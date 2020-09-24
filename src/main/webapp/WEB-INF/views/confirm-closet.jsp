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
	<link rel="stylesheet" href="/closet.css">
<link rel="stylesheet" href="/style.css">
<link rel="stylesheet" href="/about.css">
<title>Confirm Closet</title>
</head>
<body class="confirm body">
	<form action="/closet/add">

	<div class="container jumbotron confirmer" >
       <input type="hidden" value="${occasion }" name="occasion" />

		<input type="hidden" value="${thumbnail }" name="thumbnail"/>
		<input type="hidden" value="${title }" name="title"/>
		<h2>Type of clothing (top, bottom, accessory, etc):</h2>
		        <select name="type" >
                <option >Type</option>
                <option value="tops">Top</option>
				<option value="bottoms">Bottom</option>
				<option value="shoes">Shoes</option>
				<option value="accesories">Accessories</option>
				</select>
		<h2>Brief description of article:</h2>
		<textarea name="description"></textarea>
	     <div>
		<input type="submit" class="btn-primary" value="confirm"/>
		<a class="btn-secondary" href="/index">Cancel</a>
		</div>
		</div>
	</form>
</body>
</html>