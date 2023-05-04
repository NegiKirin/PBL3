package com.studywithme.service;

import com.studywithme.model.Appointment;
import com.studywithme.model.User;

import java.util.List;

public interface IAppointmentService {
    public List<Appointment> pagingAppointment(Integer index, Integer limit);
    public Integer totalItem();
    public List<Appointment> findByHost(User host);
}
