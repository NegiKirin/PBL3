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

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Login() {
        super();
    }
    private IUserService userService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/login.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		request.setAttribute("email", email);
		String error = "";
		userService = new UserService();
		String url ="";
		User u1 = userService.findByEmailAndPassword(email, password);
		if(u1!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", u1);
			url = "/home";
			response.sendRedirect("/PBL3/home?page=1&maxPageItem=6&sortName=createdDate&sortBy=desc");
		}else {
			error+="Sai Email hoặc sai mật khẩu";
			request.setAttribute("error", error);
			url = "/login";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
	}
}
