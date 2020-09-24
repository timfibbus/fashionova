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
	<link href="style.css" rel="stylesheet" />
<title>Wish List</title>
</head>

<body class="back">
<%@ include file="header.jsp"%>

	<div class="header" align="center"><h1>Your Wish List!</h1>
         </div>
  <div class="wishlist">       
	<div class="card-columns inline-block">
		<c:forEach var="result" items="${results }">

			<div class="card" style="width: 18rem;">
				<form action="/confirm-closet">
					<img name="image" src="${result.thumbnail }" class="card-img-top">
					<input type="hidden" name="thumbnail" value="${result.thumbnail }"/>
					<div class="card-body">
						<p class="card-text">
							Price:
							<c:out value="${result.price }" />
						</p>

						<p class="card-text">
							<c:out value="${result.title }" />
							<input type="hidden" name="title" value="${result.title }"/>
						</p>
						<a href="${result.link }" name="link" class="card-link">Buy</a>
						<br>
						<a href="/delete-wishlist?id=${result.id}">Delete</a>
						<br>
						
						<input type="submit" value="Add to closet">
						
					</div>
				</form>
			</div>
		</c:forEach>	
	</div>
	</div>
<body>

</body>
</html>