package com.studywithme.controller.web;

import com.studywithme.model.Appointment;
import com.studywithme.model.User;
import com.studywithme.paging.PageRequest;
import com.studywithme.paging.Pageble;
import com.studywithme.service.IAppointmentService;
import com.studywithme.service.IFriendshipService;
import com.studywithme.service.impl.AppointmentService;
import com.studywithme.service.impl.FriendshipService;
import com.studywithme.sort.Sorter;
import com.studywithme.util.FormUtil;

import java.io.IOException;
import java.util.List;

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

		Pageble pageble = new PageRequest();
		pageble = FormUtil.toModel(PageRequest.class, request);
		pageble.setSorter(FormUtil.toModel(Sorter.class,request));

		int totalPages = (int) Math.ceil((double) appointmentService.totalItem() / pageble.getMaxPageItem()) ;
		String listFriend = request.getParameter("listFriend");
		request.setAttribute("totalPages",totalPages==1?0:totalPages);
		request.setAttribute("maxPageItem",pageble.getMaxPageItem());
		request.setAttribute("page",pageble.getPage());
		request.setAttribute("listFriend",friendshipService.listFriend(listFriend,user));
		request.setAttribute("appointments",appointmentService.pagingAppointment(pageble));
		request.setAttribute("appointmentOf",appointmentService.findByHost(user));
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/home.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
