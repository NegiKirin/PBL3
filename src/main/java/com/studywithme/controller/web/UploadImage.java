package com.studywithme.controller.web;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.studywithme.model.User;
import com.studywithme.service.IUserService;
import com.studywithme.service.impl.UserService;


/**
 * Servlet implementation class uploadimg
 */
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
				maxFileSize=1024*1024*50,      	// 50 MB
				maxRequestSize=1024*1024*100	// 100 MB
)
@WebServlet("/upload-image")
public class UploadImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IUserService userService;


    public UploadImage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part file = request.getPart("avatar");
		Part file1 = request.getPart("background");
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		User user = null;
		user = (User)obj;
		userService = new UserService();
		try {
				InputStream is = file1.getInputStream();
				byte[] data = new byte[is.available()];
				is.read(data);
				System.out.println(is);
				is.close();
				String base64=Base64.getEncoder().encodeToString(data);
				if(!base64.equals("")) {
					user.setBackground(base64);
				}
				userService.updateBackground(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
				InputStream is = file.getInputStream();
				byte[] data = new byte[is.available()];
				System.out.println(is);
				is.read(data);
				is.close();
				String base64 = Base64.getEncoder().encodeToString(data);
				if(!base64.equals("")) {
					user.setAvatar(base64);
				}
				userService.updateAvatar(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
				
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

}