package com.studywithme.controller.web;

import com.studywithme.model.School;
import com.studywithme.model.User;
import com.studywithme.service.ISchoolService;
import com.studywithme.service.IUserService;
import com.studywithme.service.impl.SchoolService;
import com.studywithme.service.impl.UserService;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateProfile")
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateProfile() {
        super();
    }
	private ISchoolService schoolService;
	private IUserService userService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		schoolService = new SchoolService();
		request.setAttribute("listSchool", schoolService.findAll());
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//		var url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String dateOfBirth = request.getParameter("dateOfBirth");
		String school_id = request.getParameter("school_id");
		// Lấy name file
//		String imgfile = file.getSubmittedFileName();

		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		User user = null;
		user = (User)obj;

		try {
			if(!dateOfBirth.equals("null")) {
				user.setDateOfBirth(new SimpleDateFormat("yyyy-MM-dd").parse(dateOfBirth));
			}
		} catch (ParseException e) {
		}

		if(!lastName.equals("null")) {
			user.setLastName(lastName);
		}

		if(!firstName.equals("null")) {
			user.setFirstName(firstName);
		}
		if(!school_id.equals("null")) {
			School school = new School();
//			school.setId(school_id);
			user.setSchool(school);
		}

		userService = new UserService();

		userService.update(user);

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

}
