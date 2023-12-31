package com.notetaker.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

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
	
	
}
