package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
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
	public static void maxAllowedPacket() {
		String hql = "SET GLOBAL max_allowed_packet=15728640";
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		} catch (SQLException e) {
			e.printStackTrace();
		}

		String url1 = "jdbc:mysql://localhost:3306/studywithme";
        Connection conn;
		try {
			conn = DriverManager.getConnection(url1,"root","");

       Statement stmt = conn.createStatement();
       stmt.execute(hql)			;
       } catch (SQLException e) {
			e.printStackTrace();
		}
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
			
//			List<User> results = null;
//			results = query.getResultList();
			
			Object results = new User();
			results = query.getSingleResult();
			
			tr.commit();
			session.close();
			return (User)results;
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

	public boolean updateAvatar(User t) {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			
			if(sessionFactory!=null) {
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				
//				session.saveOrUpdate(t);
				String hql = "UPDATE User u set u.avatar = :avatar " +
							"WHERE u.id = :id";
				Query query = session.createQuery(hql);
				query.setParameter("avatar", t.getAvatar());
				query.setParameter("id", t.getId());
				
				query.executeUpdate();
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
				
//				session.saveOrUpdate(t);
				String hql = "UPDATE User u set u.firstName = :firstName , u.lastName = :lastName , u.dateOfBirth = :dateOfBirth " +
							"WHERE u.id = :id";
				Query query = session.createQuery(hql);
				query.setParameter("firstName", t.getFirstName());
				query.setParameter("lastName", t.getLastName());
				query.setParameter("dateOfBirth", t.getDateOfBirth());
				query.setParameter("id", t.getId());
				
				query.executeUpdate();
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
