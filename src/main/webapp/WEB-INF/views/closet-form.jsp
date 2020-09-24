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
<title>Add to Closet</title>
</head>
<body class="back">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" >Closet Clue</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
     <li class="nav-item active">
        <a class="nav-link" href="/">About us</a>
      </li>
     <li class="nav-item active">
        <a class="nav-link" href="/index">Find New</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/wishlist">View Wishlist <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="/upload">Upload Clothing</a>
      </li>
      </li>
     
    </ul>
  </div>
</nav>

	<div class="container">

		<h2>Add to Closet</h2>
		<form action="/closet/add" method="post">
			<table class="table">
				<tr>
					<th scope="row">Title</th>
					<td><input type="text" name="title" autofocus /></td>
				</tr>
				<tr>
					<th scope="row">Type</th>
					        <select name="type" >
                <option >Type</option>
                <option value="tops">Top</option>
				<option value="bottoms">Bottom</option>
				<option value="shoes">Shoes</option>
				<option value="accesories">Accessories</option>
				</select>
				</tr>
				<tr>
					<th scope="row">Description</th>
					<td><input type="text" name="description" /></td>
				</tr>

			</table>
			<button type="submit" class="btn btn-primary">Add</button>
			<a class="btn link" href="/closet">Cancel</a>
		</form>
	</div>

</body>
</html>