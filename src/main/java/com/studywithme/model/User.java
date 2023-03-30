package com.studywithme.model;

import java.util.Base64;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class User {
	
	@Id
	private String id;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private Date dateOfBirth;
	private byte sex;
	private Date dateRegister;
	
	@Lob
	private byte[] avatar;
	
	@Lob
	private byte[] backgroud;
	

	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "school_id")
	private School school;
	
	@ManyToMany(mappedBy = "listUser", fetch = FetchType.LAZY)
	private Set<Appointment> listAppointments = new HashSet<>();
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "friend",
				joinColumns = {@JoinColumn (name = "user_id")}, 
				inverseJoinColumns = {@JoinColumn(name = "friend_id")})
	private Set<User> friend = new HashSet<>();
	
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "friend",
				joinColumns = {@JoinColumn (name = "friend_id")}, 
				inverseJoinColumns = {@JoinColumn(name = "user_id")})
	private Set<User> friendOf = new HashSet<>();
	
	
	public User() {
	}
	
	
public User(String id, String email, String password, String firstName, String lastName, Date dateOfBirth,
		byte sex, Date dateRegister, School school) {
	this.id = id;
	this.email = email;
	this.password = password;
	this.firstName = firstName;
	this.lastName = lastName;
	this.dateOfBirth = dateOfBirth;
	this.sex = sex;
	this.dateRegister = dateRegister;
	this.school = school;
}

public String getBackgroud() {
	if(backgroud==null){
		return null;
	}else {
		return Base64.getEncoder().encodeToString(backgroud);
	}
}


public void setBackgroud(byte[] backgroud) {
	this.backgroud = backgroud;
}

public String getAvatar() {
	if(avatar==null){
		return null;
	}else {
		return Base64.getEncoder().encodeToString(avatar);
	}
}


public void setAvatar(byte[] avatar) {
	this.avatar = avatar;
}


public String getId() {
	return id;
}


public void setid(String id) {
	this.id = id;
}


public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getPassword() {
	return password;
}


public void setPassword(String password) {
	this.password = password;
}


public String getFirstName() {
	return firstName;
}


public void setFirstName(String firstName) {
	this.firstName = firstName;
}


public String getLastName() {
	return lastName;
}


public void setLastName(String lastName) {
	this.lastName = lastName;
}


public Date getDateOfBirth() {
	return dateOfBirth;
}


public void setDateOfBirth(Date dateOfBirth) {
	this.dateOfBirth = dateOfBirth;
}


public byte isSex() {
	return sex;
}


public void setSex(byte sex) {
	this.sex = sex;
}


public Date getDateRegister() {
	return dateRegister;
}


public void setDateRegister(Date dateRegister) {
	this.dateRegister = dateRegister;
}
	
//public void addFriend(User t) {
//	this.listFriend.add(t);
//}
	
}
