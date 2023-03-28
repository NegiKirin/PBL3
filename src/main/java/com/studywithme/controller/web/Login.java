package com.studywithme.controller.web;

import java.io.IOException;

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
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		request.setAttribute("email", email);
		
		UserDAO userDao = new UserDAO();
		String error = "";

		User user = new User();
		user.setEmail(email);
		password = maHoa.toSHA1(password);
		user.setPassword(password);
		String url ="";
		User u1 = userDao.selectByEmailAndPassword(user);
		
		
		if(u1!=null) {
			
			String qr2 = "SET GLOBAL max_allowed_packet=15728640";
			HttpSession session = request.getSession();
			
			session.setAttribute("user", u1);
			url = "/view/web/thanhcong.jsp";
		}else {
			error+="Sai Email hoặc sai mật khẩu";
			request.setAttribute("error", error);
			url = "/view/web/login.jsp";
		}
//		if(u1.getEmail()!=null) {
//			if(u1.getPassword()!=null) {
//				HttpSession session = request.getSession();
//				session.setAttribute("user", u1);
//				url = "/thanhcong.jsp";
//			}else {
//				error_password+="Mật khẩu không đúng";
//				url = "/login.jsp";
//				request.setAttribute("error_password", error_password);
//			}
//		}else {
//			error_email+="Email không tồn tại";
//			request.setAttribute("error_email", error_email);
//			url = "/login.jsp";
//		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

//	public void maxAllowedPacket() {
//		String hql = "SET GLOBAL max_allowed_packet=15728640";
//		try {
//			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		String url1 = "jdbc:mysql://localhost:3306/studywithme";
//        Connection conn;
//		try {
//			conn = DriverManager.getConnection(url1,"root","");
//
//       Statement stmt = conn.createStatement();
//       stmt.execute(hql)			;
//       } catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
}
