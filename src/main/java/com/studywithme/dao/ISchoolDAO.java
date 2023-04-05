package com.studywithme.dao;

import java.util.List;

import com.studywithme.model.School;

public interface ISchoolDAO extends GenericDAO<School>{
	public List<School> findAll();
	public boolean save(School school);
	public boolean update(School school);
	public School findOne(String id);
}
