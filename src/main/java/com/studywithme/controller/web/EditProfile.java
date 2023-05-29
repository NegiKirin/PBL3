package com.studywithme.controller.web;

import java.io.*;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.studywithme.model.User;
import com.studywithme.service.*;
import com.studywithme.service.impl.*;
import com.studywithme.util.SessionUtil;


@WebServlet("/edit-profile")
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB
		maxFileSize=1024*1024*50,      	// 50 MB
		maxRequestSize=1024*1024*100	// 100 MB
)
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EditProfile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User) SessionUtil.getInstance().getValue(request, "user");
		String listFriendStr = request.getParameter("listFriend");
		request.setAttribute("listFriend", FriendshipService.getInstance().listFriend(listFriendStr,user));
		request.setAttribute("listSchool", SchoolService.getInstance().findAll());
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String profileId = request.getParameter("profileUserId");
		User user = (User) SessionUtil.getInstance().getValue(request, "user");
		if (action.equals("editAvatar")) {
			Part filePart = request.getPart("avatar");
			user = UserService.getInstance().updateImg(user,filePart,"avatar");
			ModifyService.getInstance().createModify(user,user,"Chỉnh sửa ảnh đại diên");
		} else if (action.equals("editBackground")) {
			Part filePart1 = request.getPart("background");
			user = UserService.getInstance().updateImg(user,filePart1,"background");
			ModifyService.getInstance().createModify(user,user,"Chỉnh sửa ảnh bìa");
		} else if (action.equals("editProfile")) {
			String gender = request.getParameter("gender");
			String school = request.getParameter("school");
			String dateOfBirth = request.getParameter("dateOfBirth");
			user.setGender(gender.equals("male")?0:gender.equals("female")?1:2);
			user.setSchool(SchoolService.getInstance().findByName(school));
			try {
				java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateOfBirth);
				user.setDateOfBirth(new Date(date.getTime()));
			} catch (ParseException e) {
				throw new RuntimeException(e);
			}
			UserService.getInstance().update(user);
			ModifyService.getInstance().createModify(user,user,"Chỉnh sửa thông tin cá nhân");
		}
		response.sendRedirect("/PBL3/profile?id=" +user.getId());
	}
}