
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header class="header" >

<div>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		 <a class="navbar-brand" >Closet Clue</a>
		
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
		<c:if test = "${ not empty user }"> 
		 <li class="nav-item active">
        <a class="nav-link" href="/">Home</a>
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
      	<a class="nav-link" href="/view">View outfits</a>
      	</li>
   
      <li class="nav-item active">
		</c:if>
		</ul>
	</nav>

	<span class="float-right"> <c:choose>
			<c:when test="${ not empty user }">
			Welcome <c:out value="${ user.username }" />
				<a href="/logout">Logout</a>
			</c:when>
			<c:otherwise>
				<a href="/login">Login</a>
				<a href="/signup">Sign Up</a>
			</c:otherwise>
		</c:choose>
		
	</span>
</div>
</header>

<%-- <nav class="navbar navbar-expand-lg navbar-light bg-light">
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
      <c:choose>
         <c:when test = "${user} != null">
            <a href="/logout">Logout</a>
         </c:when>         <c:otherwise>
            <a href="/login"></a>
         </c:otherwise>
	  </c:choose>
     </li>
    </ul>
  </div>
</nav>
 --%>