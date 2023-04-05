package com.studywithme.dao.impl;

import java.util.List;

import com.studywithme.dao.ISchoolDAO;
import com.studywithme.model.School;

public class SchoolDAO extends AbstractDAO<School> implements ISchoolDAO{

	@Override
	public List<School> findAll() {
		String hql = "from School";
		List<School> schools = query(hql);
		return schools.isEmpty() ? null : schools;
	}

	@Override
	public boolean save(School school) {
		return insert(school);
	}

	@Override
	public boolean update(School school) {
		String hql = "UPDATE School s SET s.nameSchool = :nameSchool , s.modifiedBy = :modifiedBy , s.modifiedDate = :modifiedDate"
					+ "WHERE s.id = :id";
		return update(hql, "nameSchool", school.getNameSchool(), "modifiedBy", school.getModifiedBy(), "modifiedDate", school.getModifiedDate(), "id", school.getId());
	}

	@Override
	public School findOne(String id) {
		String hql = "FROM School s WHERE s.id = :id";
		List<School> school = query(hql, "id", id);
		return school.isEmpty() ? null : school.get(0);
	}

}