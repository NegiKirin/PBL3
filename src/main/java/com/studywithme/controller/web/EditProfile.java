package com.studywithme.controller.web;

import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.studywithme.model.School;
import com.studywithme.model.User;
import com.studywithme.service.IFriendshipService;
import com.studywithme.service.IModifyService;
import com.studywithme.service.ISchoolService;
import com.studywithme.service.IUserService;
import com.studywithme.service.impl.FriendshipService;
import com.studywithme.service.impl.ModifyService;
import com.studywithme.service.impl.SchoolService;
import com.studywithme.service.impl.UserService;


@WebServlet("/edit-profile")
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB
		maxFileSize=1024*1024*50,      	// 50 MB
		maxRequestSize=1024*1024*100	// 100 MB
)
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IUserService userService;
    private ISchoolService schoolService;
	private IFriendshipService friendshipService;
	private IModifyService modifyService;
    public EditProfile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		schoolService = new SchoolService();
		friendshipService = new FriendshipService();

		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		User user = null;
		user = (User)obj;
		String listFriendStr = request.getParameter("listFriend");
		Integer listFriend;
		if(listFriendStr==null){
			listFriend = 1;
		} else {
			listFriend = Integer.parseInt(listFriendStr);
		}
		request.setAttribute("listFriend",friendshipService.listFriend(listFriend,user));
		request.setAttribute("listSchool", schoolService.findAll());
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		Part filePart = request.getPart("avatar");
		Part filePart1 = request.getPart("background");
		String action = request.getParameter("action");
		String profileId = request.getParameter("profileUserId");
		userService = new UserService();
		modifyService = new ModifyService();
		schoolService = new SchoolService();
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		User user = null;
		user = (User)obj;
		if (action.equals("editAvatar")) {
			modifyService.createModify(user,user,"Chỉnh sửa ảnh đại diên");
			user = userService.updateImg(user,filePart,"avatar");
		} else if (action.equals("editBackground")) {
			modifyService.createModify(user,user,"Chỉnh sửa ảnh bìa");
			user = userService.updateImg(user,filePart1,"background");
		} else if (action.equals("editProfile")) {
			modifyService.createModify(user,user,"Chỉnh sửa thông tin cá nhân");
			String gender = request.getParameter("gender");
			String school = request.getParameter("school-choice");
			String dateOfBirth = request.getParameter("dateOfBirth");
			user.setGender(gender.equals("male")?0:gender.equals("female")?1:2);
			user.setSchool(schoolService.findByName(school));
			try {
				user.setDateOfBirth(new SimpleDateFormat("yyyy-MM-dd").parse(dateOfBirth));
			} catch (ParseException e) {
				throw new RuntimeException(e);
			}
			userService.update(user);
		}
		response.sendRedirect("/PBL3/profile?id=" +user.getId());
	}
}