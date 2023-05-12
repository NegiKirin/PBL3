package com.studywithme.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.*;

@Entity
public class Appointment extends AbstractModel{

	private String title;
	private Date starting_time;
	private Date ending_time;
	private Integer maximum;
	private Integer status;
	private Integer totalParticipant;
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinTable(name = "appointment_user",
			joinColumns = {@JoinColumn(name = "id_appointment")},
			inverseJoinColumns = {@JoinColumn(name = "id_participant")})
	private Set<User> participants = new HashSet<>();
	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	@JoinColumn(name = "id_host")
	private User host;
	@OneToMany(mappedBy = "appointment", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<Rate> rates = new HashSet<>();
	@OneToMany(mappedBy = "appointmentModified", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<Modify> modifiedBy = new HashSet<>();
	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	@JoinColumn(name = "id_address")
	private Address address;
	public Appointment() {
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setMaximum(Integer maximum) {
		this.maximum = maximum;
	}

	public Set<User> getParticipants() {
		return participants;
	}

	public void setParticipants(Set<User> participants) {
		this.participants = participants;
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

	public Date getStarting_time() {
		return starting_time;
	}


	public void setStarting_time(Date starting_time) {
		this.starting_time = starting_time;
	}


	public Date getEnding_time() {
		return ending_time;
	}


	public void setEnding_time(Date ending_time) {
		this.ending_time = ending_time;
	}


	public int getMaximum() {
		return maximum;
	}


	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Set<Rate> getRates() {
		return rates;
	}

	public void setRates(Set<Rate> rates) {
		this.rates = rates;
	}

	public Integer getTotalParticipant() {
		return totalParticipant;
	}

	public void setTotalParticipant(Integer totalParticipant) {
		this.totalParticipant = totalParticipant;
	}

	public void removeParticipant(User user){
		this.participants.remove(user);
		user.getListAppointmentsJoin().remove(this);
	}
}
