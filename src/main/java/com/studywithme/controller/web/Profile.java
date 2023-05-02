package com.studywithme.controller.web;

import com.studywithme.service.ISchoolService;
import com.studywithme.service.IUserService;
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

	private IUserService userService;
	private ISchoolService schoolService;
    public Profile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userService = new UserService();
		schoolService = new SchoolService();
		String id = request.getParameter("id");
		request.setAttribute("listSchool", schoolService.findAll());
		request.setAttribute("profileUser",userService.findById(Integer.parseInt(id)));
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
