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
<style type="text/css">
.note-div {
	padding: 15px;
	margin: 10px auto;
	border: 2px solid blue;
	width: 70%;
	height: 300px;
}
</style>

</head>
<body>
	<h1>All notes:</h1>
	<%
	Session session2 = NoteTaker_Service.getSessionFactory().openSession();

	Query query = session2.createQuery("from Note");
	List<Note> list = query.list();
	for (Note note : list) {
	%>
	<div class="note-div">
		<h3>Note title:</h3>
		<p>
			<%=note.getTitle()%>
		</p>

		<h3>Note content:</h3>
		<p>
			<%=note.getContent()%>
		</p>
		<button><a href="deleteServlet?note_id=<%= note.getNoteId()%>">Delete</a></button>
		<button><a href="deleteServlet">Edit</a></button>
	</div>
	<%
	}
	session2.close();
	%>


</body>
</html>