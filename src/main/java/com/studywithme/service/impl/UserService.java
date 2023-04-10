package com.studywithme.service.impl;



import java.util.Date;
import java.util.Random;

import com.studywithme.dao.IUserDAO;
import com.studywithme.dao.impl.UserDAO;
import com.studywithme.model.User;
import com.studywithme.service.IUserService;
import com.studywithme.util.maHoa;

public class UserService implements IUserService{
	
	private IUserDAO userDAO;
	
	@Override
	public User findByEmailAndPasswordAndStatus(String email, String password) {
		password = maHoa.toSHA1(password);
		userDAO = new UserDAO();
		return userDAO.findByEmailAndPasswordAndStatus(email, password);
	}

	@Override
	public User register(String lastName, String firstName, String email, String password, Integer sex) {
		User user = new User();
		userDAO = new UserDAO();
		String id;
		do {
			Random rd = new Random();
			id = "SWM" + System.currentTimeMillis() + rd.nextInt(1000);
			user.setid(id);
		} while (userDAO.findOne(id)!=null);
		user.setEmail(email);
		user.setPassword(maHoa.toSHA1(password));
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setCreatedDate(new Date(System.currentTimeMillis()));
		user.setCreatedBy(lastName + " " + firstName);
		userDAO.save(user);
		return userDAO.findOne(id);
	}

	@Override
	public User findByEmail(String email) {
		userDAO = new UserDAO();
		return userDAO.findByEmail(email);
	}

	@Override
	public boolean updateAvatar(User user) {
		userDAO = new UserDAO();
		return userDAO.updateAvatar(user);
	}

	@Override
	public boolean updateBackground(User user) {
		userDAO = new UserDAO();
		return userDAO.updateBackground(user);
	}
	
	@Override
	public boolean update(User user) {
		userDAO = new UserDAO();
		user.setModifiedDate(new Date(System.currentTimeMillis()));
		user.setModifiedBy("");
		return userDAO.update(user);
	}

	
}
