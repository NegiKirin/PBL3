package com.studywithme.dao.impl;

import com.studywithme.dao.IAppointmentDAO;
import com.studywithme.model.Appointment;

import java.util.List;

public class AppointmentDAO extends AbstractDAO<Appointment> implements IAppointmentDAO {
    @Override
    public List<Appointment> findAll() {
        String hql = "FROM Appointment";
        List<Appointment> appointments = query(hql);
        return appointments.isEmpty()? null : appointments;
    }

    @Override
    public Appointment findOne(Integer id) {
        return findId(Appointment.class,id);
    }

    @Override
    public boolean save(Appointment appointment) {
        return insert(appointment);
    }

    @Override
    public boolean deleteId(Integer id) {
        return delete(findOne(id));
    }


}
