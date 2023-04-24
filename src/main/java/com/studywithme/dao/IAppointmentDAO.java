package com.studywithme.dao;

import com.studywithme.model.Appointment;
import com.studywithme.model.User;

import java.util.List;

public interface IAppointmentDAO extends GenericDAO<Appointment>, InterfaceDAO<Appointment> {
    public List<Appointment> pagingAppointment(Integer index, Integer limit);
    public Integer count();
    public List<Appointment> findByHost(User host);
}
