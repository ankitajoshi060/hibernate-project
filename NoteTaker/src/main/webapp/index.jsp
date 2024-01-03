<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div>
		<%@include file="navbar.jsp" %>
		
		<br>
		
		<div class="card mx-auto py-2" style="width:70%">
			<img alt="note-imgae" class="image-fluid mx-auto" style="max-width:300px" src="images/note.png">
			<h1 class="text-primary text-uppercase text-center mt-3">Start Here</h1>
			<div class="container text-center">
				<button class="btn btn-outline-primary" ><a href="addnote.jsp">Click </a></button>			
			</div>
		</div>
	</div>
	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>