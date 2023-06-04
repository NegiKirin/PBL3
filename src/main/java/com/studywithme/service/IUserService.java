package com.studywithme.service;

import com.studywithme.model.User;
import com.studywithme.paging.Pageable;

import javax.servlet.http.Part;
import java.util.List;

public interface IUserService {
	public User findByEmailAndPassword(String email, String password);
	public User findByEmail(String email);
	public User findById(Integer id);
	public User register(String lastName, String firstName, String email, String password,Integer sex);
	public User update(User user);
	public User updateImg(User user, Part filePart, String image);
	public List<User> findAllUser(Pageable pageable);
	public boolean editUser(String profileUserId,String idRole, String lastName, String firstName, String gender, String idSchool, String dateOfBirth, String email, String password);
}
