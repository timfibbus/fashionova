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
	<style>
html,body
{
height:100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Saved Outfits</title>
</head>
<%@ include file="header.jsp"%>
<body class="body">

	<h1 style="background-color:white">Select an outfit to view</h1>
	<div class="container float-left">
	<c:forEach var="fit" items="${outfit }">
	<form action="/view/select">
	<input type="hidden" value="${fit.id }" name="id"/>
	<input type="submit" value="${fit.title }" class="btn-primary"/>
	<br>
	</form>
	</c:forEach>
	
	</div>
		<div class="container float">
		
		<img src="${item.top }" />
		<img src="${item.bottom }" />
		<img src="${item.accessory }" />
		<img src="${item.shoes }" />
		
		</div>
		
		<div>
			<img id="redball" src="${item.top }" width="32" height="32" style="position:absolute;" />
		</div>
		<div>
			<img id="redball" src="${item.bottom }" width="32" height="32" style="position:absolute;" />
		</div>
		<div>
			<img id="redball" src="${item.accessory }" width="32" height="32" style="position:absolute;" />
		</div>
		<div>
			<img id="redball" src="${item.shoes }" width="32" height="32" style="position:absolute;" />
		</div>	
	

<script type="text/javascript">

var redball = null;
var dragging = false;
var x;
var y;

function window_onload()
{
   redball = document.getElementById("redball");

   if(window.addEventListener)
   {
      redball.addEventListener('mousedown', startDrag);
      document.body.addEventListener('mousemove', drag);
      document.addEventListener('mouseout', stopDrag);
      document.body.addEventListener('mouseup', stopDrag);
   }
}

function startDrag(ev)
{
   if(!dragging)
   {
      x = ev.clientX - redball.offsetLeft;
      y =  ev.clientY - redball.offsetTop;
      dragging = true;
   }
}

function drag(ev)
{
   if(dragging)
   {
      redball.style.left = ev.clientX - x + "px";
      redball.style.top = ev.clientY - y + "px";
   }
}

function stopDrag(ev)
{
   if(dragging)
   {
      redball.style.left = ev.clientX - x + "px";
      redball.style.top = ev.clientY - y + "px";
      dragging = false;
   }
}

</script> 
</head>
</body>
</html>