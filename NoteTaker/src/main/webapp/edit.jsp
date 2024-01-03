<%@page import="com.notetaker.dao.NoteTaker_Service"%>
<%@page import="com.notetaker.dto.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class=.container>
		<%@include file="navbar.jsp"%>
	</div>

	<%
	int id = Integer.parseInt(request.getParameter("note_id"));
	NoteTaker_Service service = new NoteTaker_Service();
	Note note = service.findNoteById(id);
	%>
	
	<div class="container">
		<br>
		<h2>Edit your note :</h2>
		<form action="updateServlet" method="post">
			<input type="number" name="note_id" value=<%=id%> hidden>
			<div class="mb-3">
				<label for="title" class="form-label"><b>Note Title</b></label> 
				<input
					type="text" class="form-control" id="title"
					placeholder="Enter Here" name="title" value=<%= note.getTitle()%> required>
			</div>
			<div class="mb-3">
				<label for="content" class="form-label"><b>Note Content</b></label>
				<textarea type="text" class="form-control" id="content"
					placeholder="Enter your content here" required="required"
					name="content" style="height: 200px"><%= note.getContent()%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>
		</form>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>