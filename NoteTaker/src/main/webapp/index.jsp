<html>
<head>
<title>Add Notes</title>
</head>
<body>
	<h2>Please fill the note details</h2>
	<form action="saveNoteServlet" method="post">
		<div>
			<label>Note title</label><br>
			<input type="text" name="title" placeholder="Enter here" required="required">
		</div>
		<br>
		<div>
			<label>Note Content</label><br>
			<textarea rows="10" cols="100" name="content" placeholder="Enter your content here" required="required"></textarea>
		</div>
		<br>
		<input type="submit" name="add" />
	</form>
</body>
</html>
