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
<<<<<<< HEAD
	<link rel="stylesheet" href="/style.css">
<title>Confirm Closet</title>
</head>
<body class="back">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" >Closet Clue</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
     <li class="nav-item active">
        <a class="nav-link" href="/">About us</a>
      </li>
     <li class="nav-item active">
        <a class="nav-link" href="/index">Find New</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/wishlist">View Wishlist <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="/closet">View Closet</a>
      </li>
      </li>
     
    </ul>
  </div>
</nav>

<div class="header" align="center"><h2>Fill out a description for your Fashionizer item:</h2>
         </div>
<div class="uploadbox" >

=======
	<link rel="stylesheet" href="/closet.css">
<link rel="stylesheet" href="/style.css">
<link rel="stylesheet" href="/about.css">
<title>Confirm Closet</title>
</head>
<body class="confirm body">
>>>>>>> f394a8c3b959ad58bc338eb762b991b72c30c7c2
	<form action="/closet/add">

	<div class="container jumbotron confirmer" >
       <input type="hidden" value="${occasion }" name="occasion" />

		<input type="hidden" value="${thumbnail }" name="thumbnail"/>
		<input type="hidden" value="${title }" name="title"/>
<<<<<<< HEAD
		
		<input type="text" name="title" placeholder="Title of Clothing" >
		<select name="type" >
=======
		<h2>Type of clothing (top, bottom, accessory, etc):</h2>
		        <select name="type" >
>>>>>>> f394a8c3b959ad58bc338eb762b991b72c30c7c2
                <option >Type</option>
                <option value="tops">Top</option>
				<option value="bottoms">Bottom</option>
				<option value="shoes">Shoes</option>
				<option value="accesories">Accessories</option>
<<<<<<< HEAD
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
		<h5>Brief description of article:</h5>
		<p>Description: Color, fabrics, season and etc. <input type="text" name="description"> </input>
	     </p>
		<div>
	     <br></br>
		<button>Submit</button>
=======
				</select>
		<h2>Brief description of article:</h2>
		<textarea name="description"></textarea>
	     <div>
		<input type="submit" class="btn-primary" value="confirm"/>
		<a class="btn-secondary" href="/index">Cancel</a>
>>>>>>> f394a8c3b959ad58bc338eb762b991b72c30c7c2
		</div>
		</div>
		
	</form>
	</div>
	<div class="logo"><img src="images/fashionizerlogo.png"/></div>
</body>
</html>