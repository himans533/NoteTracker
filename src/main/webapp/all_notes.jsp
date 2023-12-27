<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FacotryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes :Note-Tacker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
	</div> 
 <br>
 <div class="container">
    <h1 class="text-uppercase">Add Notes :-</h1>
    
    <div class="row">
    <div class="col12">
    
    
    </div>
    
    </div>
    
    <%
    Session s = FacotryProvider.getFactory().openSession();
    Query q=s.createQuery("from todo");
    List<todo> list=q.list();     
    for(todo note:list){    	
    %>   
    <div class="card mt-3">
    <img src="image/notepad.png " class="card-img-top m-4 max-auto" Style="max-width:100px;">
  <div class="card-body px-5">
    <div class="main mb-5">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <p><b class="text-primary"><%= note.getAddeddate() %></b></p>
    </div>
    <div class="container text-center mt-2">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">delete</a>
    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
    </div>
  </div>
</div>   	
    <%	
    }
    s.close();
    %>
    </div>
</body>
</html>