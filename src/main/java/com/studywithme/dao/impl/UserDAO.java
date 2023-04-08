package com.studywithme.dao.impl;

import java.util.List;

import com.studywithme.dao.IUserDAO;
import com.studywithme.model.User;

public class UserDAO extends AbstractDAO<User> implements IUserDAO{

	@Override
	public boolean save(User user) {
		return insert(user);
	}

	@Override
	public User findOne(String id) {
		String hql = "FROM User u Where u.id = :id";
		List<User> user = query(hql,"id", id);
		return user.isEmpty() ? null : user.get(0);
	}

	@Override
	public boolean update(User user) {
		String hql = "UPDATE User u set u.firstName = :firstName , u.lastName = :lastName , u.modifiedBy = :modifiedBy , u.modifiedDate = :modifiedDate , u.dateOfBirth = :dateOfBirth , u.email = :email , u.sex = :sex , u.school =: school" 
					+ " WHERE u.id = :id";
		return update(hql, "firstName" , user.getFirstName(), "lastName", user.getLastName(), "modifiedBy", user.getModifiedBy(), 
				"modifiedDate", user.getModifiedDate(), "dateOfBirth", user.getDateOfBirth(), "email", user.getEmail(),
				"sex" , user.getSex(), "school", user.getSchool(), "id" , user.getId());
	}

	@Override
	public boolean updateImage(User user) {
		String hql = "UPDATE User u SET u.avatar = :avatar "
					+ " WHERE u.id = :id";
		return update(hql, "avatar", user.getAvatar(), "id", user.getId());
	}

	@Override
	public int getTotalItem() {
		String hql = "SELECT COUNT(*) FROM User";
		return count(hql);
	}

	@Override
	public User findByEmailAndPasswordAndStatus(String email, String password) {
		String hql = "from User u where u.email =:email and u.password =:password";
		List<User> user = query(hql, "email", email, "password", password);
		return user.isEmpty() ? null : user.get(0);
	}

	@Override
	public User findByEmail(String email) {
		String hql = "FROM User u Where u.email = :email";
		List<User> user = query(hql,"email", email);
		return user.isEmpty() ? null : user.get(0);
	}
}
