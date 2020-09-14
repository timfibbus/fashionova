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
<body>


	<form action="/search-shop">
		<h1>Search</h1>
		<input type="text" name="search" />
	</form>
	<form action="/search-outfit">
		<button type="submit" name="occasion" value="wedding">
			<img src="images/wedding.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="graduation">
			<img src="images/graduations.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="business casual">
			<img src="images/buscas.png" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="barbeque outfit">
			<img src="images/barbeque.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="cocktail outfit">
			<img src="images/cocktail.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="black tie event">
			<img src="images/blacktie.png" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="interview attire">
			<img src="images/interview.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="disco outfit">
			<img src="images/club.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="funeral attire">
			<img src="images/funeral.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="casual attire">
			<img src="images/casual.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="fine dining attire">
			<img src="images/finedine.jpg" width="300" height="300" />
		</button>
		<button type="submit" name="occasion" value="semi formal attire">
			<img src="images/semiform.jpg" width="300" height="300" />
		</button>
	</form>


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