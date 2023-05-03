package com.studywithme.dao.impl;

import java.util.List;

import com.studywithme.dao.ISchoolDAO;
import com.studywithme.model.School;

public class SchoolDAO extends AbstractDAO<School> implements ISchoolDAO {

	@Override
	public List<School> findAll() {
		String hql = "from School";
		List<School> schools = query(hql);
		return schools.isEmpty() ? null : schools;
	}

	@Override
	public School save(School school) {
		return insert(school);
	}

	@Override
	public boolean deleteId(Integer id) {
		return delete(findOne(id));
	}



/*	@Override
	public boolean update(School school) {
		String hql = "UPDATE School s SET s.nameSchool = :nameSchool , s.modifiedBy = :modifiedBy , s.modifiedDate = :modifiedDate"
					+ "WHERE s.id = :id";
		return update(hql, "nameSchool", school.getNameSchool(), "modifiedBy", school.getModifiedBy(), "modifiedDate", school.getModifiedDate(), "id", school.getId());
	}*/


	@Override
	public School findOne(Integer id) {
		return findId(School.class, id);
	}

	@Override
	public School findByName(String schoolName) {
		String hql = "from School where nameSchool =: nameSchool";
		List<School> school = query(hql,"nameSchool",schoolName);
		return school.isEmpty() ? null : school.get(0);
	}
}