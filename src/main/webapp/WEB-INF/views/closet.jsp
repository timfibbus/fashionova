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
<meta charset="UTF-8">
<title>Closet</title>
<!-- add for demo -->
<head>    
     
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
      
   <!-- add for demo -->
</head>
<body>
 <!-- add for demo -->

       
         <h2>Top picks from your closet</h2>
          
         <div>Create an outfit by moving the items into the box.</div>
         
         </div>
 <div id="dropBox" ondragenter="return dragEnter(event)" ondrop="return dragDrop(event)" ondragover="return dragOver(event)">Build Outfit</div>
      

 <!-- add for demo -->
<div>

</div>

<div>


<div id="carousel">
<label>Tops</label>
    <div class="slide">
        <img id="1" src="http://placehold.it/300x150" 
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
     <div class="slide">
        <img id="2" src="http://placehold.it/300x150" 
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
     <div class="slide">
        <img id="3" src="http://placehold.it/300x150" 
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
     <div class="slide">
        <img id="4" src="http://placehold.it/300x150" 
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
    </div>

</div>

<div>

<div id="carousel2">
<label>Bottoms</label>
     <div class="slide">
        <img id="c1" src="http://placehold.it/300x150" 
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
     <div class="slide">
        <img id="1" src="http://placehold.it/300x150" 
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
     <div class="slide">
        <img id="1" src="http://placehold.it/300x150" 
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
     <div class="slide">
        <img id="1" src="http://placehold.it/300x150" 
        draggable="true" 
        ondragstart="return dragStart(event)"/>
    </div>
</div> 
 
<div>

<div id="carousel3">
<label>Accessories</label>
    <div class="slide3">
        <img src="http://placehold.it/300x150"/>
    </div>
    <div class="slide3">
        <img src="http://placehold.it/300x150"/>
    </div>
    <div class="slide3">
        <img src="http://placehold.it/300x150"/>
    </div>
    <div class="slide3">
        <img src="http://placehold.it/300x150"/>
    </div>
    <div class="slide3">
        <img src="http://placehold.it/300x150"/>
    </div>
    <div class="slide3">
        <img src="http://placehold.it/300x150"/>
    </div>
</div>
</div>

</body>
</html>