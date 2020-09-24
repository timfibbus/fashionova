<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login to Closet Clue</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
	<link rel="stylesheet" href="/style.css">
<link href="style.css" rel="stylesheet" />
</head>

<body>

<body class="back">
<%@ include file="header.jsp"%>
<div class="login">
<h1>Login in here to access <br> Closet Clue's Fashionizer:</h1>
	<h4>Please enter your username and password below:</h4>


	 <p class="message"><c:out value="${message }"/></p>

	<form action="login" method="post">

		<p>
			<label for="username">Username:</label> <input id="username"
				type="text" name="username" placeholder="username" />
		</p>
		<p>
			<label for="password">Password:</label> <input id="password"
				type="password" name="password" placeholder="password" />
		</p>

		<p>
			<button>Login</button>
		</p>
	</form>

	<br>
</div>

</body>
</html>