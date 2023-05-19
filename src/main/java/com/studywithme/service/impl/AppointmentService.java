package com.studywithme.service.impl;

import com.studywithme.dao.IAppointmentDAO;
import com.studywithme.dao.impl.AppointmentDAO;
import com.studywithme.model.Appointment;
import com.studywithme.model.User;
import com.studywithme.paging.Pageble;
import com.studywithme.service.IAppointmentService;

import java.util.List;

public class AppointmentService implements IAppointmentService {
    private IAppointmentDAO appointmentDAO;
    @Override
    public List<Appointment> pagingAppointment(Pageble pageble) {
        appointmentDAO = new AppointmentDAO();
        return appointmentDAO.pagingAppointment(pageble);
    }

    @Override
    public Integer totalItem(Pageble pageble) {
        appointmentDAO = new AppointmentDAO();
        return appointmentDAO.count(pageble);
    }

    @Override
    public List<Appointment> findByHost(User host) {
        appointmentDAO = new AppointmentDAO();
        return appointmentDAO.findByHost(host);
    }

    @Override
    public List<Appointment> findByParticipants(User participant, String maxItem) {
        appointmentDAO = new AppointmentDAO();
        if (maxItem == null) {
            return appointmentDAO.findByParticipants(participant,5);
        } else {
            return appointmentDAO.findByParticipants(participant,Integer.parseInt(maxItem));
        }

    }
}
