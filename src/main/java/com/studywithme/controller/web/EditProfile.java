package com.studywithme.controller.web;

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

import com.studywithme.dao.UserDAO;
import com.studywithme.model.User;


/**
 * Servlet implementation class EditProfile
 */

@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String dateOfBirth = request.getParameter("dateOfBirth");
		
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
		
		UserDAO userDAO = new UserDAO();
		
		userDAO.update(user);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/thanhcong.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
