package com.studywithme.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;

@Entity
public class User extends AbstractModel {

    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String fullName;
    private Date dateOfBirth;
    private Integer gender;
    private Integer status;


    @Column(length = Integer.MAX_VALUE)
    private String avatar;
    @Column(length = Integer.MAX_VALUE)
    private String background;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    @ManyToOne
    @JoinColumn(name = "school_id")
    private School school;

    @ManyToMany(mappedBy = "participant")
    private Set<Appointment> listAppointmentsJoin = new HashSet<>();
    @OneToMany(mappedBy = "host")
    private Set<Appointment> appointmentsOf = new HashSet<>();

    /*@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "friend",
            joinColumns = {@JoinColumn(name = "user_id")},
            inverseJoinColumns = {@JoinColumn(name = "friend_id")})
    private Set<User> friend = new HashSet<>();


    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "friend",
            joinColumns = {@JoinColumn(name = "friend_id")},
            inverseJoinColumns = {@JoinColumn(name = "user_id")})
    private Set<User> friendOf = new HashSet<>();*/

    @OneToMany( mappedBy = "friend")
    private Set<Friendship> friends = new HashSet<>();

    @OneToMany( mappedBy = "requester")
    private Set<Friendship> friendRequests = new HashSet<>();


    @OneToMany(mappedBy = "userRate")
    private Set<Rate> rates = new HashSet<>();
    private float toltalRate;


/*    @OneToMany(mappedBy = "createdBy")
    private Set<AbstractModel> created = new HashSet<>();*/

    @OneToMany(mappedBy = "modifyBy")
    private Set<Modify> modifies = new HashSet<>();

    @OneToMany(mappedBy = "userModified")
    private Set<Modify> modifiedBy = new HashSet<>();

    @OneToMany(mappedBy = "reporter")
    private Set<Report> reports = new HashSet<>();

    public User() {
    }


    public User(Integer id, String email, String password, String firstName, String lastName, Date dateOfBirth,
                Integer gender, School school) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.school = school;
    }

//public String getBackgroud() {
//	if(backgroud==null){
//		return null;
//	}else {
//		return Base64.getEncoder().encodeToString(backgroud);
//	}
//}
//
//
//public void setBackgroud(byte[] backgroud) {
//	this.backgroud = backgroud;
//}
//
//public String getAvatar() {
//	if(avatar==null){
//		return null;
//	}else {
//		return Base64.getEncoder().encodeToString(avatar);
//	}
//}
//
//
//public void setAvatar(byte[] avatar) {
//	this.avatar = avatar;
//}

    @Override
    public String toString() {
        return "User [id=" + id + ", email=" + email + ", password=" + password + ", firstName=" + firstName
                + ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth + ", sex=" + gender + ", dateRegister="
                + "]";
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

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }

    public Set<Appointment> getListAppointmentsJoin() {
        return listAppointmentsJoin;
    }

    public void setListAppointmentsJoin(Set<Appointment> listAppointmentsJoin) {
        this.listAppointmentsJoin = listAppointmentsJoin;
    }

    public Set<Appointment> getAppointmentsOf() {
        return appointmentsOf;
    }

    public void setAppointmentsOf(Set<Appointment> appointmentsOf) {
        this.appointmentsOf = appointmentsOf;
    }

    public Set<Friendship> getFriends() {
        return friends;
    }

    public void setFriends(Set<Friendship> friends) {
        this.friends = friends;
    }

    public Set<Friendship> getFriendRequests() {
        return friendRequests;
    }

    public void setFriendRequests(Set<Friendship> friendRequests) {
        this.friendRequests = friendRequests;
    }

    public Set<Rate> getRates() {
        return rates;
    }

    public void setRates(Set<Rate> rates) {
        this.rates = rates;
    }

    public float getToltalRate() {
        return toltalRate;
    }

    public void setToltalRate(float toltalRate) {
        this.toltalRate = toltalRate;
    }

    public Set<Modify> getModifies() {
        return modifies;
    }

    public void setModifies(Set<Modify> modifies) {
        this.modifies = modifies;
    }

    public Set<Modify> getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(Set<Modify> modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public Set<Report> getReports() {
        return reports;
    }

    public void setReports(Set<Report> reports) {
        this.reports = reports;
    }


    // Util
/*    public void addModify(Modify modify){
        modifies.add(modify);
    }*/
}
