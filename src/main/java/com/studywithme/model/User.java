package com.studywithme.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;

@Entity
public class User extends AbstractModel{
	
	@Id
	private String id;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private Date dateOfBirth;
	private Integer sex;
	private Integer status;
	
	@Lob
	private String avatar;
	
	@Lob
	private String backgroud;

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
		Integer sex, School school) {
	this.id = id;
	this.email = email;
	this.password = password;
	this.firstName = firstName;
	this.lastName = lastName;
	this.dateOfBirth = dateOfBirth;
	this.sex = sex;
	this.school = school;
}

public String getBackgroud() {
	return backgroud;
}


public void setBackgroud(String backgroud) {
	this.backgroud = backgroud;
}

public String getAvatar() {
	return avatar;
}


public void setAvatar(String avatar) {
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


public Integer getSex() {
	return sex;
}


public void setSex(Integer sex) {
	this.sex = sex;
}


public School getSchool() {
	return school;
}


public void setSchool(School school) {
	this.school = school;
}


@Override
public String toString() {
	return "User [id=" + id + ", email=" + email + ", password=" + password + ", firstName=" + firstName
			+ ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth + ", sex=" + sex + ", dateRegister="
			 + "]";
}
//public void addFriend(User t) {
//	this.listFriend.add(t);
//}


public Integer getStatus() {
	return status;
}


public void setStatus(Integer status) {
	this.status = status;
}
	
}
