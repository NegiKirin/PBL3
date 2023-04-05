package com.studywithme.test;

import com.studywithme.dao.impl.UserDAO;
import com.studywithme.model.School;
import com.studywithme.model.User;

public class Test {
	public static void main(String[] args){
		User u1 = new User();
//		u1.setid("1");
//		u1.setFirstName("test");
//		u1.setLastName("test");
//		
		School school = new School();
//		
//		school.setId("1");
//		school.setNameSchool("BK");
//		
//		u1.setSchool(school);
//
		UserDAO userDAO = new UserDAO();
		
//		userDAO.insert(u1);
		
		u1 = userDAO.findOne("1");
//		school = u1.getSchool();
		System.out.println(u1);
		System.out.println();
		
		school.setId("2");
		school.setNameSchool("SP");
		
		u1.setSchool(school);
		
		userDAO.update(u1);
		
//		try {
//			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//			
//			if(sessionFactory!=null) {
//				Session session = sessionFactory.openSession();
//				Transaction tr = session.beginTransaction();
//				
//				// lấy ra user có c
//				School result = session.get(School.class, t.getId());
//				
//				tr.commit();
//				session.close();
//			}
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
		
	}
}
