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

  <form method="post" enctype="multipart/form-data" action="/confirm-upload">
    <input type="file" name="files[]" multiple>
    <input type="hidden" name="file" value="${response.json }" multiple>
    <input type="submit" value="Upload Files" name="submit">
  </form>
  <p id="response"></p>
  <p id="data"></p>
  <form method ="post" enctype="multipart/form-data" >
  	<input type="hidden" value="${Object.url}" name="photoId">
  </form>


 <script> const url = "https://api.cloudinary.com/v1_1/dca8dycl4/image/upload";
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
        document.getElementById("data").innerHTML += data;
      });
  }
});
</script>
</body>
</html>