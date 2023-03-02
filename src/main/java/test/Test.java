package test;

import java.sql.Date;
import java.sql.Time;

import com.studywithme.dao.AppointmentDAO;
import com.studywithme.dao.SchoolDAO;
import com.studywithme.dao.UserDAO;
import com.studywithme.model.Appointment;
import com.studywithme.model.School;
import com.studywithme.model.User;

public class Test {
	public static void main(String[] args) {
		
		School s1 = new School("Nguyen Luong Bang");
		School s2 = new School("Nguyen Thuong Hien");
		School s3 = new School("Nguyen Van Troi");
		
		User u1 = new User("SWM1", "abc@gmail.com", "123123123", "Ho", "Phuc", new Date(100, 4, 30), true,new Date(System.currentTimeMillis()),s2);
		User u2 = new User("SWM2", "abc@gmail.com", "abcdefgh", "Le", "Thanh", new Date(99, 3, 20), true,new Date(System.currentTimeMillis()),s1);
		User u3 = new User("SWM3", "abc@gmail.com", "qwezxcv", "Nguyen", "Tan", new Date(102, 7, 1), true,new Date(System.currentTimeMillis()),s3);
		User u4 = new User("SWM4", "abc@gmail.com", "qweqwe", "Leo", "Messi", new Date(103, 2, 27), true,new Date(System.currentTimeMillis()),s1);
		User u5 = new User("SWM5", "abc@gmail.com", "zxczxczxc", "Nguyen", "Van A", new Date(105, 6, 30), true,new Date(System.currentTimeMillis()),s2);
		
		
		Appointment a1 = new Appointment("001", new Time(7, 30, 0), new Time(8, 30, 0), "73 Nguyen Luong Bang", 10);
		Appointment a2 = new Appointment("002", new Time(13, 30, 0), new Time(17, 30, 0), "123 Tran Cao Van", 7);
		Appointment a3 = new Appointment("003", new Time(11, 30, 0), new Time(15, 30, 0), "11 Au CO", 10);
		Appointment a4 = new Appointment("004", new Time(17, 30, 0), new Time(20, 30, 0), "12 Lac Long Quan", 10);
		
		UserDAO userDAO = new UserDAO();
		SchoolDAO schoolDAO = new SchoolDAO();
		AppointmentDAO appointmentDAO = new AppointmentDAO();
		
		userDAO.insert(u1);
		userDAO.insert(u2);
		userDAO.insert(u3);
		userDAO.insert(u4);
		userDAO.insert(u5);
		
		
	}
}
