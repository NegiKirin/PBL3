package com.studywithme.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class School {
	
	@Id
	@GeneratedValue
	private Integer id;
	private String shool;
	
	@OneToMany(mappedBy = "school", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<User> listUser = new HashSet<>();
	
	public School(Integer id, String shool) {
		this.id = id;
		this.shool = shool;
	}

	

	public School(String shool) {
		this.shool = shool;
	}



	public School() {
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getShool() {
		return shool;
	}


	public void setShool(String shool) {
		this.shool = shool;
	}
	
	
	
}
