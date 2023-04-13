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
public class Role extends AbstractModel{
/*	@Id
	@GeneratedValue
	private Integer id;*/
	private String code;
	private String name;
	
	@OneToMany(mappedBy = "role", cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	private Set<User> users= new HashSet<>();

	public Role() {
	}

	public Role(Integer id, String code, String name) {
		this.id = id;
		this.code = code;
		this.name = name;
	}

/*	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}*/

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
