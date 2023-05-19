package com.studywithme.dao;

import com.studywithme.model.Appointment;
import com.studywithme.model.User;
import com.studywithme.paging.Pageble;

import java.util.List;

public interface IAppointmentDAO extends GenericDAO<Appointment>, InterfaceDAO<Appointment> {
    public List<Appointment> pagingAppointment(Pageble pageble);
    public Integer count(Pageble pageble);
    public List<Appointment> findByHost(User host);
    public List<Appointment> findByParticipants(User participant,Integer maxItem);
}
