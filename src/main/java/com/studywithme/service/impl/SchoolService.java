package com.studywithme.service.impl;

import com.studywithme.dao.ISchoolDAO;
import com.studywithme.dao.impl.SchoolDAO;
import com.studywithme.model.School;
import com.studywithme.service.ISchoolService;

import java.util.List;

public class SchoolService implements ISchoolService {
	private static ISchoolService schoolService;
	public static ISchoolService getInstance() {
		if (schoolService == null) {
			schoolService = new SchoolService();
		}
		return schoolService;
	}
	@Override
	public School save(School school) {
		return SchoolDAO.getInstance().insert(school);
	}

	@Override
	public List<School> findAll() {
		return SchoolDAO.getInstance().findAll();
	}

	@Override
	public School findByName(String schoolName) {
		return SchoolDAO.getInstance().findByName(schoolName);
	}
}
