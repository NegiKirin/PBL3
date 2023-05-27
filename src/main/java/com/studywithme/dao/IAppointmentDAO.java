package com.studywithme.dao;

import com.studywithme.model.Appointment;
import com.studywithme.model.User;
import com.studywithme.paging.Pageable;

import java.util.List;

public interface IAppointmentDAO extends GenericDAO<Appointment>, InterfaceDAO<Appointment> {
    public List<Appointment> pagingAppointment(Pageable pageble);
    public Integer count(Pageable pageble);
    public Integer countByHostCurrent(User host);
    public List<Appointment> findByHost(User host);
    public List<Appointment> findByHostCurrent(User host);
    public List<Appointment> findByParticipantCurrent(User participant);
    public List<Appointment> findByParticipants(User participant,Integer maxItem);
    public Integer countFindByParticipants(User participant);
}
