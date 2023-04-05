package com.studywithme.dao;

import com.studywithme.model.User;

public interface IUserDAO extends GenericDAO<User>{
	public boolean save(User user);
	public User findOne(String id);
	public User findByEmail(String email);
	public boolean update(User user);
	public boolean updateImage(User user);
	public int getTotalItem();
	public User findByEmailAndPasswordAndStatus(String email, String password); 
}
