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
<%@ include file="header.jsp"%>


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
				  <select name="occasion">
				<option >Occasion</option>
				<option value="graduation">Graduation</option>
				<option value="wedding">Wedding</option>
				<option value="business casual">Business Casual</option>
				<option value="barbeque outfit">Barbeque Day</option>
				<option value="cocktail outfit">Cocktail Party</option>
				<option value="black tie event">Black Tie Event</option>
				<option value="interview attire">Job Interview</option>
				<option value="disco outfit">Discotheque</option>
				<option value="funeral attire">Funeral</option>
				<option value="casual attire">Casual Attire</option>
				<option value="fine dining attire">Fancy Dinner</option>
				<option value="semi formal attire">Semi-Formal</option>
			</select>

			
		<h2>Brief description of article:</h2>
		<textarea name="description"></textarea>
	     <div>
		<input type="submit" class="btn-primary" value="confirm"/>
		<a class="btn-secondary" href="/index">Cancel</a>
		</div>
		</div>
		
	</form>
	</div>
	<div class="logo"><img src="images/fashionizerlogo.png"/></div>
</body>
</html>