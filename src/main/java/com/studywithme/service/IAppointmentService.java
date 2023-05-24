package com.studywithme.service;

import com.studywithme.model.Appointment;
import com.studywithme.model.User;
import com.studywithme.paging.Pageble;

import java.util.List;

public interface IAppointmentService {
    public List<Appointment> pagingAppointment(Pageble pageble);
    public Integer totalItem(Pageble pageble);
    public List<Appointment> findByHost(User host);
    public List<Appointment> findByParticipants(User participant,String maxItem);
    public Appointment createAppointment(String dateMeetingStr, String startTimeStr, String endTimeStr,String max, String address, String idAddressType, String idWard, User host);
}
