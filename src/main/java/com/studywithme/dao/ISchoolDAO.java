package com.studywithme.dao;

import java.util.List;

import com.studywithme.model.School;

public interface ISchoolDAO extends GenericDAO<School>, InterfaceDAO<School> {
	public List<School> findByName(String schoolName);
}
