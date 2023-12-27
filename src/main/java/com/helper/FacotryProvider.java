package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FacotryProvider {
	public static SessionFactory factory;
	
	public static SessionFactory getFactory() {
		
		if(factory == null) {
//		Configuration cfg=new Configuration();
//		cfg.configure("hibernate.cfg.xml");
//		SessionFactory factory=cfg.buildSessionFactory();
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		return factory;			
	}
	public void closeFactory() {
		if(factory.isOpen()) {
			factory.close();
		}
	}
}
