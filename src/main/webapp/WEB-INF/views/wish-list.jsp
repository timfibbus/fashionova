<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Wish List</title>
</head>

<body class="container">
	<div class="card">
		<div class="card-body">
			<h5 class="card-title">Your Wish List!</h5>
			<p class="card-text"></p>
			<a href="/" class="btn btn-primary">Return to Search</a>
		</div>
	</div>
	<div class="card-columns inline-block">
		<c:forEach var="result" items="${results }">

			<div class="card" style="width: 18rem;">
				<form>
					<img name="image" src="${result.thumbnail }" class="card-img-top">
					<div class="card-body">
						<p class="card-text">
							Price:
							<c:out value="${result.price }" />
						</p>

						<p class="card-text">
							Rating:
							<c:out value="${result.rating }" />
							/5
						</p>

						<p class="card-text">
							Reviews:
							<c:out value="${result.reviews }" />
						</p>

						<p class="card-text">
							<c:out value="${result.title }" />
						</p>
						<a href="${result.link }" name="link" class="card-link">Buy</a>
					</div>
				</form>
			</div>
		</c:forEach>
	</div>
<body>

</body>
</html>