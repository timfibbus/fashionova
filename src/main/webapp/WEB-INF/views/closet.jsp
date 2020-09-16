<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="closet.css">
<meta charset="UTF-8">
<title>Closet</title>
</head>
<body>

<div>
<h3> Top picks from your closet</h3>
<img src="http://placehold.it/300x150"/>
<img src="http://placehold.it/300x150"/>
<img src="http://placehold.it/300x150"/>
</div>

<div>
<form action="/closet/sort">
	<select name="occasion">
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
</form>
</div>

<div>


<div id="carousel">
<label>Tops</label>
	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('top')}">
	<div class="slide cloth">
        <img src="${item.thumbnail }"/>
    </div>
    </c:if>
    </c:forEach>
    <div class="slide">
        <img src="http://placehold.it/300x150"/>
    </div>
    </div>

</div>

<div>

<div id="carousel2">
<label>Bottoms</label>
	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('bottom')}">
	<div class="slide cloth">
        <img src="${item.thumbnail }"/>
    </div>
    </c:if>
    </c:forEach>
    <div class="slide">
        <img src="http://placehold.it/300x150"/>
    </div>
</div>
</div> 
 
<div>

<div id="carousel3">
<label>Accessories</label>
	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('accessory')}">
	<div class="slide3 cloth">
        <img src="${item.thumbnail }"/>
    </div>
    </c:if>
	</c:forEach>
    <div class="slide3">
        <img src="http://placehold.it/300x150"/>
    </div>
 
</div>
</div>

</body>
</html>