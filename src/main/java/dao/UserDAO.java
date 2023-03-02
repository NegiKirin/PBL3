package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.User;
import util.HibernateUtil;

public class UserDAO implements DAOInterface<User>{

	@Override
	public List<User> selectAll() {
		List<User> list = new ArrayList();
		
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
				String hql = "from User";
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
	public User selectById(User t) {
		
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
				// lấy ra user có c
				User result = session.get(User.class, t.getId());
				
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
	
public boolean checkEmail(String email) {
		
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
				String hql = "from User u where u.email =: user_email";
				Query query = session.createQuery(hql);
				query.setParameter("user_email", email);
				List<User> results = null;
				results = query.getResultList();
				
				if(results.isEmpty()) {
					tr.commit();
					session.close();
					return false;
				}else {
					tr.commit();
					session.close();
					return true;
				}
				
			}
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}

public User selectByEmailAndPassword(User t) {
	
	try {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		if(sessionFactory!=null) {
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			String hql = "from User u where u.email =: user_email and u.password =: user_password";
			Query query = session.createQuery(hql);
			query.setParameter("user_email", t.getEmail());
			query.setParameter("user_password", t.getPassword());
			
			List<User> results = null;
			results = query.getResultList();
			
			tr.commit();
			session.close();
			return results.get(0);
		}
	}catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	return null;
}

	@Override
	public boolean insert(User t) {
		
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
	public boolean update(User t) {
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
	public boolean delete(User t) {
		
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
