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
@WebServlet("/upload-avatar")
public class UploadAvatar extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IUserService userService;


    public UploadAvatar() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/uploading.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part file = request.getPart("avatar");
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		User user = null;
		user = (User)obj;
		try {
			InputStream is = file.getInputStream();
			byte[] data = new byte[is.available()];
			is.read(data);
			is.close();
			
			user.setAvatar(Base64.getEncoder().encodeToString(data));
		} catch (Exception e) {
		}
		
		userService = new UserService();
		
		userService.updateImage(user);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/uploading.jsp");
		rd.forward(request, response);
	}

}
