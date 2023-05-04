package com.studywithme.service.impl;

import com.studywithme.dao.IAppointmentDAO;
import com.studywithme.dao.impl.AppointmentDAO;
import com.studywithme.model.Appointment;
import com.studywithme.model.User;
import com.studywithme.service.IAppointmentService;

import java.util.List;

public class AppointmentService implements IAppointmentService {
    private IAppointmentDAO appointmentDAO;
    @Override
    public List<Appointment> pagingAppointment(Integer index, Integer limit) {
        appointmentDAO = new AppointmentDAO();
        return appointmentDAO.pagingAppointment(index,limit);
    }



    @Override
    public Integer totalItem() {
        appointmentDAO = new AppointmentDAO();
        return appointmentDAO.count();
    }

    @Override
    public List<Appointment> findByHost(User host) {
        appointmentDAO = new AppointmentDAO();
        return appointmentDAO.findByHost(host);
    }
}
