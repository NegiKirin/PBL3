package com.studywithme.service;

import java.util.List;

import com.studywithme.model.School;

public interface ISchoolService {
	public boolean save(School school);
	public List<School> findAll();
}
