<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div>
		<%@include file="navbar.jsp"%>
		
		<div class="container py-3">
		<h3>Please fill your detail here :</h3>
		<br>
			<form action="saveNoteServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label"><b>Note Title</b></label>
				 <input type="text" class="form-control"
					id="title" placeholder="Enter Here" name="title" required>
			</div>
			<div class="mb-3">
				<label for="content" class="form-label"><b>Note Content</b></label>
				<textarea type="text" 
						class="form-control"
						id="content" 
						placeholder="Enter your content here" 
						required="required" name="content" style="height:200px"></textarea>
			</div> 
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>