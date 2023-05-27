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
	private IAppointmentService appointmentService;
    public EditProfile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		schoolService = new SchoolService();
		friendshipService = new FriendshipService();
		appointmentService = new AppointmentService();
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		User user = null;
		user = (User)obj;
		String listFriendStr = request.getParameter("listFriend");
//		String listAppointmentStr = request.getParameter("listAppointment");
//		request.setAttribute("listAppointment", appointmentService.findByParticipants(user,5));
		request.setAttribute("listFriend",friendshipService.listFriend(listFriendStr,user));
		request.setAttribute("listSchool", schoolService.findAll());
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
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
			Part filePart = request.getPart("avatar");
			user = userService.updateImg(user,filePart,"avatar");
			modifyService.createModify(user,user,"Chỉnh sửa ảnh đại diên");
		} else if (action.equals("editBackground")) {
			Part filePart1 = request.getPart("background");
			user = userService.updateImg(user,filePart1,"background");
			modifyService.createModify(user,user,"Chỉnh sửa ảnh bìa");
		} else if (action.equals("editProfile")) {
			String gender = request.getParameter("gender");
			String school = request.getParameter("school");
			String dateOfBirth = request.getParameter("dateOfBirth");
			user.setGender(gender.equals("male")?0:gender.equals("female")?1:2);
			user.setSchool(schoolService.findByName(school));
			try {
				java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateOfBirth);
				user.setDateOfBirth(new Date(date.getTime()));
			} catch (ParseException e) {
				throw new RuntimeException(e);
			}
			userService.update(user);
			modifyService.createModify(user,user,"Chỉnh sửa thông tin cá nhân");
		}
		response.sendRedirect("/PBL3/profile?id=" +user.getId());
	}
}