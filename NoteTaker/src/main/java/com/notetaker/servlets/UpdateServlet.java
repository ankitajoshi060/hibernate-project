package com.notetaker.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.notetaker.dao.NoteTaker_Service;
import com.notetaker.dto.Note;

@WebServlet("/updateServlet")
public class UpdateServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("note_id"));
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		Note note = new Note();
		note.setNoteId(id);
		note.setTitle(title);
		note.setContent(content);
		note.setDate(new Date());
		
		NoteTaker_Service service = new NoteTaker_Service();
		service.updateNote(note);
		RequestDispatcher dispatcher = req.getRequestDispatcher("showNote.jsp");
		dispatcher.forward(req, resp);
		
		
	}
}
