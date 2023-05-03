package com.studywithme.service;

import com.studywithme.model.Appointment;
import com.studywithme.model.User;
import com.studywithme.paging.Pageble;

import java.util.List;

public interface IAppointmentService {
    public List<Appointment> pagingAppointment(Pageble pageble);
    public Integer totalItem();
    public List<Appointment> findByHost(User host);
}
