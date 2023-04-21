package com.studywithme.service.impl;


import java.util.Date;
import java.util.Random;

import com.studywithme.dao.IUserDAO;
import com.studywithme.dao.impl.UserDAO;
import com.studywithme.model.User;
import com.studywithme.service.IUserService;
import com.studywithme.util.maHoa;

public class UserService implements IUserService {

	private IUserDAO userDAO;
	
	@Override
	public User findByEmailAndPassword(String email, String password) {
		userDAO = new UserDAO();
		password = maHoa.toSHA1(password);
		return userDAO.findByEmailAndPasswordAndStatus(email, password);
	}

	@Override
	public User register(String lastName, String firstName, String email, String password, Integer gender) {
		userDAO = new UserDAO();
		User user = new User();
		user.setEmail(email);
		user.setPassword(maHoa.toSHA1(password));
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setFullName(firstName+" "+lastName);
		user.setGender(gender);
		user.setCreatedDate(new Date(System.currentTimeMillis()));
		return userDAO.save(user);
	}

	@Override
	public User findByEmail(String email) {
		userDAO = new UserDAO();
		return userDAO.findByEmail(email);
	}

	@Override
	public User findById(Integer id) {
		userDAO = new UserDAO();
		return userDAO.findById(id);
	}

	@Override
	public User update(User user) {
		userDAO = new UserDAO();
		return userDAO.update(user);
	}

}
