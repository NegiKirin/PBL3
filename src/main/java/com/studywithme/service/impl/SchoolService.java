package com.studywithme.service.impl;

import java.util.List;

import com.studywithme.dao.ISchoolDAO;
import com.studywithme.dao.impl.SchoolDAO;
import com.studywithme.model.School;
import com.studywithme.service.ISchoolService;

public class SchoolService implements ISchoolService {

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
