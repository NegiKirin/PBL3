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

	private String title;
	private Time starting_time;
	private Time ending_time;
	private Integer maximum;
	
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinTable(name = "appointment_user",
			joinColumns = {@JoinColumn(name = "id_appointment")},
			inverseJoinColumns = {@JoinColumn(name = "id_participant")})
	private Set<User> participant = new HashSet<>();
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "id_host")
	private User host;

/*	@OneToMany(cascade = CascadeType.PERSIST,fetch = FetchType.LAZY,mappedBy = "createdBy")
	private Set<AbstractModel> created = new HashSet<>();*/
	@OneToMany(mappedBy = "appointmentModified")
	private Set<Modify> modifiedBy = new HashSet<>();
	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	@JoinColumn(name = "id_address")
	private Address address;
	public Appointment() {
	}



/*	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}*/

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setMaximum(Integer maximum) {
		this.maximum = maximum;
	}

	public Set<User> getParticipant() {
		return participant;
	}

	public void setParticipant(Set<User> participant) {
		this.participant = participant;
	}

	public User getHost() {
		return host;
	}

	public void setHost(User host) {
		this.host = host;
	}

	public Set<Modify> getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(Set<Modify> modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

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


	public int getMaximum() {
		return maximum;
	}


	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}

}
