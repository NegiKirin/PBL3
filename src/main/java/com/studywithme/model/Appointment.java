package com.studywithme.model;

import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.*;

@Entity
public class Appointment extends AbstractModel{
	
/*	@Id
	@GeneratedValue
	private Integer id;*/
	private Time starting_time;
	private Time ending_time;
	private String address;
	private Integer maximum;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "appointment_user",
				joinColumns = {@JoinColumn (name = "appointment_id")},
				inverseJoinColumns = {@JoinColumn(name = "user_id")})
	private Set<User> listUser = new HashSet<>();

/*	@OneToMany(cascade = CascadeType.PERSIST,fetch = FetchType.LAZY,mappedBy = "createdBy")
	private Set<AbstractModel> created = new HashSet<>();*/
	
	public Appointment() {
	}
	
	public Appointment(Integer id, Time starting_time, Time ending_time, String address, int maximum) {
		this.id = id;
		this.starting_time = starting_time;
		this.ending_time = ending_time;
		this.address = address;
		this.maximum = maximum;
	}


/*	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}*/


	public Time getStarting_time() {
		return starting_time;
	}


	public void setStarting_time(Time starting_time) {
		this.starting_time = starting_time;
	}


	public Time getEnding_time() {
		return ending_time;
	}


	public void setEnding_time(Time ending_time) {
		this.ending_time = ending_time;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getMaximum() {
		return maximum;
	}


	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}
	
	public void addUser(User t) {
		this.listUser.add(t);
	}
}
