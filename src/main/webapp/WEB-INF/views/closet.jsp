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
<link rel="stylesheet" href="/about.css">

<meta charset="UTF-8">
<title>Closet</title>

<head>      

</head>

<body class="body">

<%@ include file="header.jsp"%>


         <div class="header"><h1>Welcome to Your Fashionizer</h1>
         Sort Closet by Category</div>
         
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
            
   <form action="/closet/name"> 	
   <div id="dropBox" ondragenter="return dragEnter(event)" ondrop="return dragDrop(event)" ondragover="return dragOver(event)"><h3>Create an outfit by moving the items into the box.</h3>						
	<input type="text" name="title" />
	<input id="save" type="submit" class="card-link" value="save outfit" /> </div>
	</form> 

  <form action="/closet/delete"> 	
   <div class = "trash" width="30" height="30" ondragenter="return dragEnter(event)" ondrop="return dragDrop(event)" ondragover="return dragOver(event)">						
	<input id="delete" type="submit" class="card-link" value="delete outfit" /> </div>
	</form> 
    

<div>
</div>

<div id="carousel">
<label class="carousel-overlay">Tops</label>

	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('top')}">

	<div class="container card cloth1 slide" draggable="true" 
        ondragstart="return dragStart(event)" id="${item.id }">
        <input type="hidden" name="top" value="${item.thumbnail}" draggable="true"/>
        <input type="hidden" name="id" value="${item.id}" draggable="true"/>

        <img src="${item.thumbnail }" draggable="false"/>
        

        <div >
        <img class="img-responsive center-block" src="${item.thumbnail }" alt="Your Alt Text" draggable="false" />
        	
        </div>

    </div>
    </c:if>
    </c:forEach>

</div>
<br></br>
<div>
<div id="carousel2">
<label>Bottoms</label>
        	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('bottom')}">

	<div class="container card cloth1 slide" draggable="true" 
        ondragstart="return dragStart(event)" id="${item.id }">
        <input type="hidden" name="bottom" value="${item.thumbnail}" draggable="true"/>
        <input type="hidden" name="id" value="${item.id}" draggable="true"/>
        <img src="${item.thumbnail }" draggable="false"/>
        </div>
		
    </c:if>
    </c:forEach>
</div>
</div> 
 
<div>
<div id="carousel3">
<label>Accessories</label>

    	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('accesories')}">
	<div class="container card slide3 cloth3" draggable="true" 
        ondragstart="return dragStart(event)" id="${item.id }">
        <input type="hidden" name="accessory" value="${item.thumbnail}" draggable="true"/>
        <input type="hidden" name="id" value="${item.id}" draggable="true"/>
        <img src="${item.thumbnail }" draggable="false"/>

    </div>
    </c:if>
	</c:forEach>
</div>

</div>
<br></br>
<div>
<div id="carousel4">
<label>Shoes</label>
	<c:forEach var="item" items="${closet }">
	<c:if test="${item.type.contains('shoes')}">
	<div class="container card slide4 cloth3" draggable="true" 
        ondragstart="return dragStart(event)" id="${item.id }">
        <input type="hidden" name="shoes" value="${item.thumbnail}" draggable="true"/>
        <input type="hidden" name="id" value="${item.id}" draggable="true"/>
        <img src="${item.thumbnail }" draggable="false"/>

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
          ev.dataTransfer.setDragImage(ev.target.querySelector("img"),0,0);
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

function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
</body>
</html>