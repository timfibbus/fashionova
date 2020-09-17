<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link href="style.css" rel="stylesheet" />
<head>


<meta charset="ISO-8859-1" content="width=device-width, initial-scale=1">
<title>What's up</title>
</head>

<h1>Closet Clue</h1>
<body class="back">

	<p class="walk">
	<form action="/search-outfit">
		<h1>Search</h1>
		<input type="text" name="search" placeholder="Enter what to search!" />

		<br>
		<br> <select name="gender">
			<option value=""></option>
			<option value="mens">Men's</option>
			<option value="womens">Women's</option>
		</select>

		<div class="login">
			<input type="text" name="login" placeholder="Username" /> <br>
			<input type="password" name="login" placeholder="Password" /> <br>
			<button type="submit">Login</button>
		</div>

		<!--  <form action="/search-outfit">-->
		<div class="index">
			<button type="submit" name="occasion" value="wedding">
				<img src="images/wedding.jpg" width="300" height="300" />
			</button>
			<button type="submit" name="occasion" value="graduation">
				<img src="images/graduations.jpg" width="300" height="300" />
			</button>

		</div>

		<br>
		<div class="index">
			<button type="submit" name="occasion" value="business casual">
				<img src="images/buscas.png" width="300" height="300" />
			</button>
			<button type="submit" name="occasion" value="barbeque outfit">
				<img src="images/barbeque.jpg" width="300" height="300" />
			</button>
		</div>
		<br>
		<div class="index">
			<button type="submit" name="occasion" value="cocktail outfit">
				<img src="images/cocktail.jpg" width="300" height="300" />
			</button>
			<button type="submit" name="occasion" value="black tie event">
				<img src="images/blacktie.png" width="300" height="300" />
			</button>
		</div>
		<br>
		<div class="index">
			<button type="submit" name="occasion" value="interview attire">
				<img src="images/interview.jpg" width="300" height="300" />
			</button>
			<button type="submit" name="occasion" value="disco outfit">
				<img src="images/club.jpg" width="300" height="300" />
			</button>
		</div>
		<br>
		<div class="index">
			<button type="submit" name="occasion" value="funeral attire">
				<img src="images/funeral.jpg" width="300" height="300" />
			</button>
			<button type="submit" name="occasion" value="casual attire">
				<img src="images/casual.jpg" width="300" height="300" />
			</button>
		</div>
		<br>
		<div class="index">
			<button type="submit" name="occasion" value="fine dining attire">
				<img src="images/finedine.jpg" width="300" height="300" />
			</button>
			<button type="submit" name="occasion" value="semi formal attire">
				<img src="images/semiform.jpg" width="300" height="300" />
			</button>
		</div>
		<div class="about">
			<a href="/about">About us</a>
		</div>

<div class="wishlist">
			<a href="/wishlist">View your wishlist</a>
		</div>


<div class="closet">
			<a href="/closet">View your closet</a>

		</div>

	</form>
</body>
</html>