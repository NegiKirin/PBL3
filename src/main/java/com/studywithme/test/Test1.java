package com.studywithme.test;

import com.studywithme.dao.impl.AppointmentDAO;
import com.studywithme.dao.impl.UserDAO;
import com.studywithme.model.Appointment;
import com.studywithme.model.User;

import java.io.File;
import java.util.List;

public class Test1 {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
        User u1 = userDAO.findOne(1);
//        userDAO.delete(u1);
        AppointmentDAO appointmentDAO = new AppointmentDAO();
        Appointment appointment = appointmentDAO.findOne(1);
        appointmentDAO.delete(appointment);
        System.out.println("thanh Cong");
    }
}
