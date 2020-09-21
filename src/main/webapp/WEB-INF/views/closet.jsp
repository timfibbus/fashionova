<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="/closet.css">
<link rel="stylesheet" href="/style.css">
<meta charset="UTF-8">
<title>Closet</title>
<!-- add for demo -->
<head>      
   <!-- add for demo -->
</head>
<body>
 <!-- add for demo -->
<div>
<<<<<<< HEAD
         <h2>Your closet</h2>
         <div>
<form action="/closet/sort">
			<select name="occasion">
				<option value="">All</option>
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
			</select> <input type="submit" value="sort"/>
</form>
		<a href="/" class="btn-secondary">Return Home</a>
		</div>
=======
<div class="index">
		<a href="/index">Back to search</a>
	</div>

<div class="wishlist">
		<a href="/wishlist">View your wishlist</a>
	</div>

         <h2>Top picks from your closet</h2>
>>>>>>> master
          
         <div>Create an outfit by moving the items into the box.</div>
    	
 <div id="dropBox" ondragenter="return dragEnter(event)" ondrop="return dragDrop(event)" ondragover="return dragOver(event)">Build Outfit</div>      

 <!-- add for demo -->
<div>
</div>

<div id="carousel">
<label>Tops</label>

	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('top')}">
	<div class="slide cloth">
        <img id="${item.id }" src="${item.thumbnail }"
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
    </c:if>
    </c:forEach>

</div>

<div>
<div id="carousel2">
<label>Bottoms</label>

	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('bottom')}">
	<div class="slide cloth">
        <img id="${item.id }" src="${item.thumbnail }"
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
    </c:if>
    </c:forEach>
</div>
</div> 
 
<div>
<div id="carousel3">
<label>Accessories</label>
	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('accessory')}">
	<div class="slide3 cloth">
        <img id="${item.id }" src="${item.thumbnail }"
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
    </c:if>
	</c:forEach>
</div>
</div>


</div>

      <script type="text/javascript">
      function dragStart(ev) {
          ev.dataTransfer.effectAllowed='move';
          ev.dataTransfer.setData("Text", ev.target.getAttribute('id'));
          ev.dataTransfer.setDragImage(ev.target,0,0);
          return true;
       }
       function dragEnter(ev) {
          event.preventDefault();
          return true;
       }
       function dragOver(ev) {
          return false;
       }
       function dragDrop(ev) {
          var src = ev.dataTransfer.getData("Text");
          ev.target.appendChild(document.getElementById(src));
          ev.stopPropagation();
          return false;
       }
      </script>
</body>
</html>