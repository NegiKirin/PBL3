package com.studywithme.controller.web;

import com.studywithme.model.User;
import com.studywithme.service.IAppointmentService;
import com.studywithme.service.IFriendshipService;
import com.studywithme.service.impl.AppointmentService;
import com.studywithme.service.impl.FriendshipService;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Home() {
        super();
    }
	private IAppointmentService appointmentService;
	private IFriendshipService friendshipService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		appointmentService = new AppointmentService();
		friendshipService = new FriendshipService();

		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		User user = null;
		user = (User)obj;

		String pageAppointmentStr = request.getParameter("page");
		String maxPageItemAppointmentStr = request.getParameter("maxPageItem");
		Integer pageAppointment, maxPageItemAppointment;
		if(pageAppointmentStr!=null){
			pageAppointment = Integer.parseInt(pageAppointmentStr);
		} else {
			pageAppointment = 1;
		}
		if(maxPageItemAppointmentStr!=null){
			maxPageItemAppointment = Integer.parseInt(maxPageItemAppointmentStr);
		} else {
			maxPageItemAppointment = 1;
		}


		String listFriendStr = request.getParameter("listFriend");
		Integer listFriend;
		if(listFriendStr==null){
			listFriend = 1;
		} else {
			listFriend = Integer.parseInt(listFriendStr);
		}
		request.setAttribute("listFriend",friendshipService.listFriend(listFriend,user));
		request.setAttribute("appointments",appointmentService.pagingAppointment(pageAppointment,maxPageItemAppointment));
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/home.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
