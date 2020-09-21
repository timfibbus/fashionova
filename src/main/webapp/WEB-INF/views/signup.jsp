<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="style.css" rel="stylesheet" />

</head>
<body>

	<h1>Sign up here</h1>

	<form action="signup" method="post">

		<p>
			<label for="username">Username:</label> <input id="username"
				name="username" value="<c:out value="${param.username }"/>" required
				minlength="3" />
		</p>
		<p>
			<label for="password">Password:</label> <input id="password"
				type="password" name="password" required minlength="3" />
		</p>

		<p>
			<button>Submit</button>
		</p>
	</form>

	<br>

</body>
</html>