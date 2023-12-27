<%@page import="com.entities.todo"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FacotryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editPage.com</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your Notes :-</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FacotryProvider.getFactory().openSession();
		todo note = (todo) s.get(todo.class, noteId);
		%>
		<form action="UpdateServlet" method="post">
		<input value="<%= note.getId() %>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title"> Note title</label> <input name="title"
					required="required" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter Here.."
					value="<%= note.getTitle() %>"
					/>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required="required" id="content"
					placeholder="Enter Your Content Here.." class="form-control"
					style="height: 300px;"> 
					<%= note.getContent()%></textarea>
			</div>
			<br>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your note</button>
			</div>
		</form>


	</div>


</body>
</html>