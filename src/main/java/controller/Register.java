package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.User;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String re_password = request.getParameter("re_password");
		
		request.setAttribute("email", email);
		
		
		UserDAO userDao = new UserDAO();
		String error_password = "";
		String error_email = "";
		
		String url ="";
		
		if(userDao.checkEmail(email)) {
			error_email +="Email đã tồn tại";
		}
		if(!password.equals(re_password)) {
			error_password +="Mật khẩu không khớp";
		}else {
			if(password.length()<8) {
				error_password += "Mật khẩu phải có ít nhất 8 kí tự";
			}
		}
		
		if(error_email.length()>0 || error_password.length()>0) {
			url = "/register.jsp";
			request.setAttribute("error_email", error_email);
			request.setAttribute("error_password", error_password);
		}else {
			User user = new User();
			
			do {
				Random rd = new Random();
				String id = "SWM" + System.currentTimeMillis() + rd.nextInt(1000);
				user.setid(id);
			} while (userDao.selectById(user)!=null);
			
			user.setEmail(email);
			user.setPassword(password);
			user.setDateRegister(new Date(System.currentTimeMillis()));
			userDao.insert(user);
			url = "/thanhcong.jsp";
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
