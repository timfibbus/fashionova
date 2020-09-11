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
<title>Insert title here</title>
</head>
<body >

<form action="/search-outfit">
	<h1>Search</h1>
	<input type ="text" name="search" />

	
	<select name="occasion">
		<option value="">Outfit Occasion</option>
		<option value="wedding">Wedding</option>
		<option value="graduation">Graduation</option>
		<option value="business casual">Business Casual</option>
		<option value="barbeque outfit">BBQ</option>
		<option value="cocktail outfit">Cocktail</option>
		<option value="black tie event">Black Tie</option>
		<option value="interview attire">Interview</option>
		<option value="disco outfit">Club</option>
		<option value="funeral attire">Funeral</option>
		<option value="casual attire">Casual</option>
		<option value="fine dining attire">Fine Dining</option>
		<option value="semi formal attire">Semi-Formal</option>
	</select>
	<button type="submit">Search by Outfit</button>
	
</form>

</body>
</html>