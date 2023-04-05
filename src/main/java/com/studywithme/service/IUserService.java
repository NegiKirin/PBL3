package com.studywithme.service;

import com.studywithme.model.User;

public interface IUserService {
	public User findByEmailAndPasswordAndStatus(String email, String password);
	public User findByEmail(String email);
	public User register(String lastName, String firstName, String email, String password,Integer sex);
	public boolean updateImage(User user);
	public boolean update(User user);
}
