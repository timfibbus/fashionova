<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
        <a class="nav-link" href="/closet">View Closet</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/wishlist">View Wishlist <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="/upload">Upload Clothing</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/signup">Create an Account</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/login">Login</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/logout">Logout</a>
      </li>
     
     
    </ul>
  </div>
</nav>
	<div>
		<form action="/closet/save">
		<p>Name this outfit</p>
		<input type="text" name="title"/>
		<input type="submit" />
		</form>
	</div>

</body>
</html>