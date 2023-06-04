package com.studywithme.dao;

import com.studywithme.model.User;
import com.studywithme.paging.Pageable;

import java.util.List;

public interface IUserDAO extends GenericDAO<User>, InterfaceDAO<User> {
	public User findByEmail(String email);
	public int getTotalItem();
	public User findByEmailAndPasswordAndStatus(String email, String password);
	public User findById(Integer id);
	public List<User> findAllUser(Pageable pageable);

}
