package com.studywithme.service;

import com.studywithme.model.User;

import javax.servlet.http.Part;

public interface IUserService {
	public User findByEmailAndPassword(String email, String password);
	public User findByEmail(String email);
	public User findById(Integer id);
	public User register(String lastName, String firstName, String email, String password,Integer sex);
/*	public User updateAvatar(User user);
	public User updateBackground(User user);*/
	public User update(User user);
	public User updateImg(User user, Part filePart, String image);
}
