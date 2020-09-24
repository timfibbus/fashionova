<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create an Account</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="style.css" rel="stylesheet" />

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
        <a class="nav-link" href="/">Home</a>
      </li>
        </li>
    </ul>
  </div>
</nav>
<div class="signup">
	<h1>Sign-up for Closet Clue's Fashionizer Account.</h1>
	<h5>Enter a Username and Password below to get started!</h5>
	
	<p class="message"><c:out value="${message }"/></p>

	<form action="signup" method="post">

		<p>
			<label for="username">Username:</label> <input id="username"
				name="username" placeholder="username" />
		</p>
		<p>
			<label for="password">Password:</label> <input id="password"
				type="password" name="password" placeholder="password" />
		</p>
		
		<p>
			<label for="passwordConfirm">Re-enter Password:</label> <input id="passwordConfirm"
				type="password" name="passwordConfirm" placeholder="password" />
		</p>

		<p>
			<button>Create Account</button>
		</p>
	</form>

	<br>
</div>
</body>
</html>