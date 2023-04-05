package com.studywithme.controller.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studywithme.model.User;
import com.studywithme.service.IUserService;
import com.studywithme.service.impl.UserService;

@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private IUserService userService;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/register.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String re_password = request.getParameter("re_password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String sex = request.getParameter("sex");
		request.setAttribute("email", email);
		request.setAttribute("firstName", firstName);
		request.setAttribute("lastName", lastName);
		
		String error_password = "";
		String error_email = "";
		
		String url ="";
		userService = new UserService();
		if(userService.findByEmail(email)!=null) {
			error_email +="Email đã tồn tại";
		}
		if(!password.equals(re_password)) {
			error_password +="Mật khẩu không khớp";
		}else if((password.indexOf(' ')!=-1)) {
			error_password+="Mật khẩu không có khoảng trắng";
		}
		else {
			if(password.length()<8) {
				error_password += "Mật khẩu phải có ít nhất 8 kí tự";
			}
		}
		if(error_email.length()>0 || error_password.length()>0) {
			url = "/view/web/register.jsp";
			request.setAttribute("error_email", error_email);
			request.setAttribute("error_password", error_password);
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		}else {
			User user = new User();
			user = userService.register(lastName, firstName, email, password, sex.equals("male") ? 0 : 1);
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("/PBL3/home");
		}
	}
}
