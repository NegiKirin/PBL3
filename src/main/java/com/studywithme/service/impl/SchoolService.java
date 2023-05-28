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
	private ISchoolDAO schoolDAO;
	@Override
	public School save(School school) {
		schoolDAO = new SchoolDAO();
		return schoolDAO.insert(school);
	}

	@Override
	public List<School> findAll() {
		schoolDAO = new SchoolDAO();
		return schoolDAO.findAll();
	}

	@Override
	public School findByName(String schoolName) {
		schoolDAO = new SchoolDAO();
		return schoolDAO.findByName(schoolName);
	}
}
