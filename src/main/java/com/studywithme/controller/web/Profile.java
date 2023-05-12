package com.studywithme.controller.web;

import com.studywithme.model.User;
import com.studywithme.service.IAppointmentService;
import com.studywithme.service.IFriendshipService;
import com.studywithme.service.ISchoolService;
import com.studywithme.service.IUserService;
import com.studywithme.service.impl.AppointmentService;
import com.studywithme.service.impl.FriendshipService;
import com.studywithme.service.impl.SchoolService;
import com.studywithme.service.impl.UserService;
import jakarta.persistence.Id;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IFriendshipService friendshipService;
	private IUserService userService;
	private ISchoolService schoolService;
	private IAppointmentService appointmentService;
    public Profile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userService = new UserService();
		schoolService = new SchoolService();
		friendshipService = new FriendshipService();
		appointmentService = new AppointmentService();
		String id = request.getParameter("id");
		User user = userService.findById(Integer.parseInt(id));
		String listFriend = request.getParameter("listFriend");
		String listAppointment = request.getParameter("listAppointment");


		request.setAttribute("listAppointment", appointmentService.findByParticipants(user,listAppointment));
		request.setAttribute("listFriend",friendshipService.listFriend(listFriend,user));
		request.setAttribute("listSchool", schoolService.findAll());
		request.setAttribute("profileUser",user);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
