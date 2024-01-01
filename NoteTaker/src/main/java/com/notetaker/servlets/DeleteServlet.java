package com.notetaker.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.notetaker.dao.NoteTaker_Service;

@WebServlet("/deleteServlet")
public class DeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("note_id").trim());
		
		NoteTaker_Service service = new NoteTaker_Service();
		service.deleteNote(id);
		RequestDispatcher dispatcher = req.getRequestDispatcher("showNote.jsp");
		dispatcher.include(req, resp);
		
	}
}
