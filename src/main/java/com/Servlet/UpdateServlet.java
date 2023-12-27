package com.Servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.todo;
import com.helper.FacotryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   try {
		   String title=request.getParameter("title");
		   String content=request.getParameter("content");
		   int noteId = Integer.parseInt(request.getParameter("noteId").trim());
		   Session s = FacotryProvider.getFactory().openSession();
		   Transaction tx = s.beginTransaction();
		   
		   todo note=s.get(todo.class,noteId);
		   note.setTitle(title);
		   note.setContent(content);
		   note.setAddeddate(new Date());
		   
		   tx.commit();
		   s.close();
		   
		   response.sendRedirect("all_notes.jsp");
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	}

}
