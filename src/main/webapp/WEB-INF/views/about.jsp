<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<link href='https://fonts.googleapis.com/css?family=Fontdiner Swanky' rel='stylesheet'>
<link href="style.css" rel="stylesheet" />
<link href="about.css" rel="stylesheet" />
<style type='text/css'>

</style>
<style type='text/css'>

<style>
h1 {
margin: auto;	
width: 20%;
text-align: center;
padding: 20px;
background-color: white; font-size: 35px;
</style>
<style>

</style>
<meta charset="ISO-8859-1">
<title>Fashionizer Home</title>
</head>

<body class="body">
 <%@ include file="header.jsp"%>
    

<div class="jumbotron">
  <h1 class="display-4">Welcome to Closet Clue!</h1>
  <p class="lead">Here you can store your personal wardrobe into our 
virtual closet and choose what you want to wear before you even leave your bed!</p>
  <hr class="my-4">
  <p>You can also search through clothing online you may not own yet and buy/save them to a wishlist!</p>
  <a class="btn btn-primary btn-lg" href="/index" role="button">Shop & Browse</a>
   <a class="btn btn-primary btn-lg" href="/closet" role="button">Enter Closet</a>
</div>

</body>
</html>