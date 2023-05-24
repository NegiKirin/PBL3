package com.studywithme.service.impl;

import com.studywithme.dao.IAddressDAO;
import com.studywithme.dao.IAddressTypeDAO;
import com.studywithme.dao.IAppointmentDAO;
import com.studywithme.dao.impl.AddressDAO;
import com.studywithme.dao.impl.AddressTypeDAO;
import com.studywithme.dao.impl.AppointmentDAO;
import com.studywithme.model.*;
import com.studywithme.paging.Pageble;
import com.studywithme.service.IAppointmentService;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;

public class AppointmentService implements IAppointmentService {
    private IAppointmentDAO appointmentDAO;
    private IAddressDAO addressDAO;
    private IAddressTypeDAO addressTypeDAO;
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

    @Override
    public Appointment createAppointment(String dateMeetingStr, String startTimeStr, String endTimeStr, String max, String address, String idAddressType, String idWard, User host) {
        java.sql.Date dateMeeting = null;
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateMeetingStr);
            dateMeeting = new java.sql.Date(date.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Time startTime = Time.valueOf(LocalTime.parse(startTimeStr));
        Time endTime = Time.valueOf(LocalTime.parse(endTimeStr));
        Address address1 = new Address();
        addressTypeDAO = new AddressTypeDAO();
        addressDAO = new AddressDAO();
        address1.setDetail(address);
        address1.setWard(new Ward(Integer.parseInt(idWard)));
        address1.setCreatedBy(host);
        address1.setCreatedDate(new java.sql.Date(System.currentTimeMillis()));
        address1.setCreatedBy(host);
        address1.setAddressType(addressTypeDAO.findOne(Integer.parseInt(idAddressType)));

        Appointment appointment = new Appointment();
        appointment.setAddress(addressDAO.insert(address1));
        appointment.setStarting_time(startTime);
        appointment.setEnding_time(endTime);
        appointment.setDateMeeting(dateMeeting);
        appointment.setCreatedDate(new java.sql.Date(System.currentTimeMillis()));
        appointment.setHost(host);
        appointment.setCreatedBy(host);
        appointment.setStatus(0);
        appointment.setMaximum(Integer.parseInt(max));
        appointment.setTotalParticipant(1);
        appointmentDAO = new AppointmentDAO();
        return appointmentDAO.insert(appointment);
    }
}