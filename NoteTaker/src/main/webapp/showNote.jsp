<%@page import="com.notetaker.dto.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.notetaker.dao.NoteTaker_Service"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</style>

</head>
<body>

	<div class=.container>
		<%@include file="navbar.jsp"%>
	</div>
	<h2 class="text-uppercase">All notes:</h2>
	<%
	Session session2 = NoteTaker_Service.getSessionFactory().openSession();

	Query query = session2.createQuery("from Note order by id desc");
	List<Note> list = query.list();
	for (Note note : list) {
	%>
	<div class="container mb-3">	
		<div class="card p-3" style="width: 70%;">
			<img src="images/10134825.png" style="width: 70px;"
				class="card-img-top" alt="...">
			<p class="card-text position-absolute bottom-0 end-0 p-3 text"><b><%=note.getDate()%></b></p>
			<div class="card-body">
				<h5 class="card-title"><%=note.getTitle()%></h5>
				<p class="card-text"><%=note.getContent()%></p>
				<a href="deleteServlet?note_id=<%=note.getNoteId()%>"
					class="btn btn-danger">Delete</a> 
				<a href="edit.jsp?note_id=<%=note.getNoteId()%>" class="btn btn-primary">Edit</a>
			</div>
		</div>
	</div>

	<%
	}
	session2.close();
	%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>