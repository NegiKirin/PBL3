package model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class User {
	
	@Id
	private String id;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private Date dateOfBirth;
	private boolean sex;
	private Date dateRegister;
	
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
		boolean sex, Date dateRegister, School school) {
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


public boolean isSex() {
	return sex;
}


public void setSex(boolean sex) {
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
