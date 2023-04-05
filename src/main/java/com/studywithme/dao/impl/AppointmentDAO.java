package com.studywithme.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.studywithme.model.Appointment;
import com.studywithme.util.HibernateUtil;


public class AppointmentDAO implements DAOInterface<Appointment>{

	@Override
	public List<Appointment> selectAll() {
		List<Appointment> list = new ArrayList();
		
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
				String hql = "from Appointment";
				Query query = session.createQuery(hql);
				list = query.getResultList();
				
				tr.commit();
				session.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Appointment selectById(Appointment t) {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
				// lấy ra user có c
				Appointment result = session.get(Appointment.class, t.getId());
				
				tr.commit();
				session.close();
				return result;
			}
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return null;
	}

	@Override
	public boolean insert(Appointment t) {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
				
				try {
					session.save(t);
				} catch (Exception e) {
					return false;
				}
				
				tr.commit();
				session.close();
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean update(Appointment t) {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
				session.saveOrUpdate(t);
				
				tr.commit();
				session.close();
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delete(Appointment t) {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
				session.delete(t);
				
				tr.commit();
				session.close();
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
