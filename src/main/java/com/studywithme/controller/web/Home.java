package com.studywithme.controller.web;

import com.studywithme.service.IAppointmentService;
import com.studywithme.service.impl.AppointmentService;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Home() {
        super();
    }
	private IAppointmentService appointmentService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		appointmentService = new AppointmentService();
		request.setAttribute("appointments",appointmentService.pagingAppointment(1,6));
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/home.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
