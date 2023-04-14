package com.studywithme.service;

import com.studywithme.model.User;

public interface IUserService {
	public User findByEmailAndPassword(String email, String password);
	public User findByEmail(String email);
	public User register(String lastName, String firstName, String email, String password,Integer sex);
/*	public User updateAvatar(User user);
	public User updateBackground(User user);*/
	public User update(User user);
}
