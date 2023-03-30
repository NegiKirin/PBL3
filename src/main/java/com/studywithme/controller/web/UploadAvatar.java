package com.studywithme.controller.web;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import com.studywithme.dao.UserDAO;
import com.studywithme.model.User;


/**
 * Servlet implementation class uploadimg
 */
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
				maxFileSize=1024*1024*50,      	// 50 MB
				maxRequestSize=1024*1024*100	// 100 MB
) 
@WebServlet("/upload-avatar")
public class UploadAvatar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadAvatar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/uploading.jsp");
		rd.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part file = request.getPart("avatar");
		
		// Lấy name file
//		String imgfile = file.getSubmittedFileName();
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		User user = null;
		user = (User)obj;
		try {
			InputStream is = file.getInputStream();
			byte[] data = new byte[is.available()];
			is.read(data);
			is.close();
			user.setAvatar(data);
		} catch (Exception e) {
		}
		
		UserDAO userDAO = new UserDAO();
		
		userDAO.updateAvatar(user);
		
//		try {
//			InputStream is = file.getInputStream();
//			
//			byte[] data = new byte[is.available()];
//			is.read(data);
//			user.setAvatar(data);
//			
//			UserDAO userDAO = new UserDAO();
//			
//			user.setFirstName("Load");
//			userDAO.update(user);
//			
//			System.out.println("upload img");
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/uploading.jsp");
		rd.forward(request, response);
	}

}
