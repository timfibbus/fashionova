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
<style>
        .bcontent {
            margin-top: 10px;
        }
    </style>
</head>
<body class="container">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Here's what we found!</h5>
    <p class="card-text"></p>
    <a href="/" class="btn btn-primary">Return to Search</a>
  </div>
</div>
	<div class="card-columns inline-block">
	<c:forEach var="result" items="${results }">
	
		<div class="card" style="width: 18rem;">
		<form>
  			<img name="image" src="${result.thumbnail }" class="card-img-top" >

  		</form>
		</div>
	</c:forEach>
	</div>
	
</body>
</html>