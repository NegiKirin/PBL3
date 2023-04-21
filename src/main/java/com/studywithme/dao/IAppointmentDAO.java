package com.studywithme.dao;

import com.studywithme.model.Appointment;

import java.util.List;

public interface IAppointmentDAO extends GenericDAO<Appointment>, InterfaceDAO<Appointment> {
    public List<Appointment> pagingAppointment(Integer index, Integer limit);
    public Integer count();
}
