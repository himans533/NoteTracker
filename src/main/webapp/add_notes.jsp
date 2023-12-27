<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
	</div>
	
	<br>
	<div class="container">
	<h3>please Fill Your Notes Detail's.. </h3>
	<form action="SaveNoteServlet" method="post">
		<div class="form-group">
			<label for="title" >
				Note title</label> 
				<input name="title"
				required="required" 
				type="text"
				class="form-control"
				id="exampleInputEmail1" 
				aria-describedby="emailHelp"
				placeholder="Enter Here..">
	    </div>
		<div class="form-group">
			<label for="content">Note Content</label>
				<textarea name="content"
				required="required"
				 id="content" 
				 placeholder="Enter Your Content Here.."
			     class="form-control" 
				 style="height: 300px;"
				 ></textarea>
		 </div>
	     <br>
	 <div class="container text-center">
		<button type="submit" class="btn btn-primary">Submit</button>
	 </div>
	  </form>
	</div>
</body>
</html>