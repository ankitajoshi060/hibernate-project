<html>
<head>
<title>Add Notes</title>
</head>
<body>
	<h2>Please fill the note details</h2>
	<form action="saveNoteServlet" method="post">
		<div>
			<label><b> Note title</b></label><br>
			<input type="text" name="title" placeholder="Enter here" required="required">
		</div>
		<br>
		<div>
			<label><b>Note Content</b></label><br>
			<textarea rows="10" cols="100" name="content" placeholder="Enter your content here" required="required"></textarea>
		</div>
		<br>
		<input type="submit" value="add" />
	</form>
</body>
</html>
