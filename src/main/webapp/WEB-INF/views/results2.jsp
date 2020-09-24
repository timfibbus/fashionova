<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<head>
<meta charset="ISO-8859-1" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<link href="style.css" rel="stylesheet" />
<title>Insert title here</title>
<style>
.bcontent {
	margin-top: 10px;
}
</style>
</head>
<body class="back">

<%@ include file="header.jsp"%>
	<div class="card">
		<div class="card-body">
			<h3 class="card-title">Here's what we found!</h3>
			<p class="card-text"></p>
			
		</div>
	</div>
	<div class="card-columns inline-block">
		<c:forEach var="result" items="${results }">
			<c:if test="${result.thumbnail.startsWith('h') }">
				<div class="card" style="width: 18rem;">
					<form action="/wish-list/add">
					<input type="hidden" value="${occasion }" name="occasion"/>
						<a class="custom-checkbox"> <i
							class="glyphicon glyphicon-star-empty"></i> <i
							class="glyphicon glyphicon-star"></i></a> <img
							src="${result.thumbnail }" class="card-img-top"> <input
							type="hidden" name="thumbnail" value="${result.thumbnail}" />
						<div class="card-body">
							<p class="card-text">
								Price:
								<c:out value="${result.price }" />
							</p>
							<input type="hidden" name="price" value="${result.price}" />
							<c:if test="${result.rating > 0 }">
								<p class="card-text">
									Rating:
									<c:out value="${result.rating }" />
									/5
								</p>
							</c:if>
							<c:if test="${result.reviews > 0 }">
								<p class="card-text">
									Reviews:
									<c:out value="${result.reviews }" />
								</p>
							</c:if>
							<p class="card-text">
								<c:out value="${result.title }" />
							</p>
							<input type="hidden" name="title" value="${result.title}" /> <a
								href="${result.link }" name="link" class="card-link">Buy</a>
								 <input
								type="hidden" name="link" value="${result.link}" />
								 <input type="submit" class="card-link" value="add to wishlist" />
						</div>
					</form>
					<form action="/confirm-closet">
							<input type="hidden" name="occasion" value="${occasion }"/>
							<input type="hidden" name="thumbnail" value="${result.thumbnail}" />
							<input type="hidden" name="title" value="${result.title}" />
						    <input type="submit" class="card-link" value="add to closet" />
					</form>
					<form action="/reverse-search" >
							<input type="hidden" name="thumbnail" value="${result.thumbnail }" />
							<input type="submit" class="card-link" value="search for similar items" />
					</form>
				</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>