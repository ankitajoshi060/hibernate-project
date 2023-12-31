package com.notetaker.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.notetaker.dao.NoteTaker_Service;
import com.notetaker.dto.Note;

@WebServlet("/saveNoteServlet")
public class SaveServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			Note note1 = new Note();
			note1.setTitle(title);
			note1.setContent(content);
			note1.setDate(new Date());
			
			Session session =NoteTaker_Service.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();
			session.save(note1);
			transaction.commit();
			session.close();
			
			resp.setContentType("text/html ");
			PrintWriter out = resp.getWriter();
			out.print("<h3>Note added successfully</h3>");
			out.print("<a href='showNote.jsp'>View Notes</a>");
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}
}
