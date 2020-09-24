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
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body class="back">
<%@ include file="header.jsp"%>

<div class="header" align="center"><h1> Upload An Image to Your Closet!</h1></div>
<div class="outerbox" >
<div class="uploadbox" >

<h5>Add clothing items to your closet here.</h5>
  <form method="post" enctype="multipart/form-data">
    <input type="file" name="files[]">
    <input type="submit" value="Upload Files" name="submit">
    <br>
    <p>Remember to fill out a description of your clothing item.</p>
  </form>

  <p id="data"></p>
<br></br>
  <form action="add-upload" id="upload" method="post">
    <input id="url" type="hidden" name="url" >
        <input type="text" name="title" placeholder="Title of Clothing" >
        <select name="type" >
                <option >Type</option>
                <option value="tops">Top</option>
				<option value="bottoms">Bottom</option>
				<option value="shoes">Shoes</option>
				<option value="accesories">Accessories</option>
				</select>
    <input  type="text" name="description" placeholder="Description"  >
    <select name="occasion">
				<option >Occasion</option>
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
<div class="logo"><img src="images/fashionizerlogo.png"/></div>
</div>
 <script> const url = "https://api.cloudinary.com/v1_1/djnmoo66f/image/upload";
const form = document.querySelector("form");

form.addEventListener("submit", (e) => {
  e.preventDefault();

  const files = document.querySelector("[type=file]").files;
  const formData = new FormData();

  for (let i = 0; i < files.length; i++) {
    let file = files[i];
    formData.append("file", file);
    formData.append("upload_preset", "fashionizer_preset");

    fetch(url, {
      method: "POST",
      body: formData
    })
      .then((response) => {
        return response.json();
      })
      .then((data) => {
    	  console.log(data);
        document.getElementById("data").innerHTML += data.secure_url;
        var url= data.secure_url;
        document.getElementById("url").value = url;
        document.getElementById("upload").submit();
        });
 }
});
</script>
</body>
</html>