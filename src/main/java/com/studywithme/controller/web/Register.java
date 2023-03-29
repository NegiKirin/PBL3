package com.studywithme.controller.web;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.sql.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studywithme.dao.UserDAO;
import com.studywithme.model.User;
import com.studywithme.util.maHoa;


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
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/register.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String re_password = request.getParameter("re_password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String sex = request.getParameter("sex");
		request.setAttribute("email", email);
		request.setAttribute("firstName", firstName);
		request.setAttribute("lastName", lastName);
		
		UserDAO userDao = new UserDAO();
		String error_password = "";
		String error_email = "";
		
		String url ="";
		
		if(userDao.checkEmail(email)) {
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
		}else {
			User user = new User();
			
			do {
				Random rd = new Random();
				String id = "SWM" + System.currentTimeMillis() + rd.nextInt(1000);
				user.setid(id);
			} while (userDao.selectById(user)!=null);
			
			user.setEmail(email);
			password = maHoa.toSHA1(password);
			user.setPassword(password);
			user.setDateRegister(new Date(System.currentTimeMillis()));
			user.setFirstName(firstName);
			user.setLastName(lastName);
			if(sex.equals("male")) {
				user.setSex((byte) 0);
			}else if(sex.equals("female")) {
				user.setSex((byte) 1);
			}
			
//			File file =new File("D:\\GitHub\\PBL3\\src\\main\\webapp\\template\\image\\ava.png");
//			URI fileUri = file.toURI();
//			System.out.println("URI:" + fileUri);
//			System.out.println(file.exists());

			
			userDao.insert(user);
			userDao.setImageDefault(user);
			url = "/view/web/home.jsp";
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	
	}

}
