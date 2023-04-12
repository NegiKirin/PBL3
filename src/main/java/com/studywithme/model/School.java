package com.studywithme.model;

import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class School extends AbstractModel{
	
/*	@Id
	@GeneratedValue
	private Integer id;*/
	private String nameSchool;
	
	@OneToMany(mappedBy = "school", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<User> listUser = new HashSet<>();
	
	
	public School(Integer id, String shool) {
		this.id = id;
		this.nameSchool = shool;	
	}
	
	
	public School(String nameSchool) {
		this.nameSchool = nameSchool;
	}


	public School() {
	}

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getNameSchool() {
		return nameSchool;
	}

	
	public void setNameSchool(String nameSchool) {
		this.nameSchool = nameSchool;
	}
	
}
