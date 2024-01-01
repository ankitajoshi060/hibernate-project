package com.notetaker.dao;

import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.notetaker.dto.Note;

public class NoteTaker_Service {

	private static SessionFactory factory;
	
	public static SessionFactory getSessionFactory() {
		if (factory==null) {
			Configuration configuration = new Configuration();
			configuration.configure("hibernate.cfg.xml");
			factory = configuration.buildSessionFactory();
		}
		return factory;
	}
	
	public void closeFactory() {
		if (factory.isOpen()) {
			factory.close();
		}
	}
	
	public void saveNote(Note note) {
		Session session =getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(note);
		transaction.commit();
		session.close();
	}
	
	public Note findNoteById(int id){
		Session session =getSessionFactory().openSession();
		Note note = session.get(Note.class, id);
		session.close();
		return note;
	}
	public void updateNote(Note note) {
		Session session = getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.update(note);
		transaction.commit();
		session.close();
	}
	public void deleteNote(int id) {
		
		Session session =getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		
		Note note = session.get(Note.class, id);
		if (note!=null) {
			
			session.delete(note);
		}
		else {
			System.out.println("Note not found");
		}
		
		
		transaction.commit();
		session.close();
	}
	
}
