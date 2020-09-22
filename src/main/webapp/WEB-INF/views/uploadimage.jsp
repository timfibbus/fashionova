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
<body>

<h1> Upload An Image to Your Closet!</h1>
<p>Please leave a description of your uploaded clothing item.</p>
  <form method="post" enctype="multipart/form-data">
    <input type="file" name="files[]">
    <input type="submit" value="Upload Files" name="submit">
  </form>

  <p id="data">

  <form action="add-upload" id="upload" method="post">
    <input id="url" type="hidden" name="url" >
        <input type="text" name="title" placeholder="Title of Clothing" >
        <input  type="text" name="type" placeholder="Type of Clothing" >
    <input  type="text" name="description" placeholder="Description"  >
    <input  type="text" name="occasion" placeholder="Occasion" >

  </form>

  </p>

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