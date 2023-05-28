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
import com.studywithme.util.SessionUtil;
import jakarta.persistence.Id;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Profile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		User user = UserService.getInstance().findById(Integer.parseInt(id));
		String listFriend = request.getParameter("listFriend");
		String maxItem = request.getParameter("maxItem");
		User me = (User) SessionUtil.getInstance().getValue(request, "user");


		request.setAttribute("listAppointment", AppointmentService.getInstance().findByParticipants(user, maxItem));
		request.setAttribute("totalAppointment", AppointmentService.getInstance().countFindByParticipants(user));
		request.setAttribute("appointmentJoined", AppointmentService.getInstance().findByParticipantCurrent(me));
		request.setAttribute("listFriend", FriendshipService.getInstance().listFriend(listFriend,user));
		request.setAttribute("listSchool", SchoolService.getInstance().findAll());
		request.setAttribute("profileUser",user);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
