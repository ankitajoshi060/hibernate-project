<%@page import="com.notetaker.dao.NoteTaker_Service"%>
<%@page import="com.notetaker.dto.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("note_id"));
		NoteTaker_Service service = new NoteTaker_Service();
		Note note = service.findNoteById(id);
	%>
	<h2>Edit your note</h2>
	<form action="updateServlet" method="post">
		<div>
			
			<input type="number" name="note_id" value=<%=note.getNoteId()%> hidden="hidden">
			
			<label><b> Note title</b></label><br> <input type="text"
				name="title" placeholder="Enter here" required="required"
				value=<%= note.getTitle()%>>
		</div>
		<br>
		<div>
			<label><b>Note Content</b></label><br>
			<textarea 
				rows="10" cols="100" name="content"
				placeholder="Enter your content here" 
				required="required" ><%= note.getContent()%>
			</textarea>
		</div>
		<br> 
		<input type="submit" value="Edit" />
	</form>

</body>
</html>