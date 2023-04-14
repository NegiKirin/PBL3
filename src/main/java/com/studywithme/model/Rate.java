package com.studywithme.model;

import jakarta.persistence.*;

@Entity
public class Rate extends AbstractModel{
/*	@Id
	@GeneratedValue
	private Integer id;*/
	private Integer point;
	
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id_rate")
	private User userRate;
	public Rate() {
	}

	public Rate(Integer id, Integer point) {
		this.id = id;
		this.point = point;
	}

/*	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}*/

	public Integer getPoint() {
		return point;
	}

	public void setPoint(Integer point) {
		this.point = point;
	}

	public User getUserRate() {
		return userRate;
	}

	public void setUserRate(User userRate) {
		this.userRate = userRate;
	}
}
