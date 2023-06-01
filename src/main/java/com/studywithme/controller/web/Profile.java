package com.studywithme.controller.web;

import com.studywithme.model.User;
import com.studywithme.service.IAppointmentService;
import com.studywithme.service.IFriendshipService;
import com.studywithme.service.ISchoolService;
import com.studywithme.service.IUserService;
import com.studywithme.service.impl.*;
import com.studywithme.util.EncodeUtil;
import com.studywithme.util.SessionUtil;
import jakarta.persistence.Id;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Profile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		User user = UserService.getInstance().findById(Integer.parseInt(id));
		String listFriend = request.getParameter("listFriend");
		String maxItem = request.getParameter("maxItem");
		String ms = request.getParameter("ms");
		User me = (User) SessionUtil.getInstance().getValue(request, "user");
		if(ms != null) {
			request.setAttribute("errorChange","Mật khẩu không đúng");
		}
		request.setAttribute("listAppointment", AppointmentService.getInstance().findByParticipants(user, maxItem));
		request.setAttribute("totalAppointment", AppointmentService.getInstance().countFindByParticipants(user));
		request.setAttribute("appointmentJoined", AppointmentService.getInstance().findByParticipantCurrent(me));
		request.setAttribute("listFriend", FriendshipService.getInstance().listFriend(listFriend,me));
		request.setAttribute("friendship", FriendshipService.getInstance().getFriendship(user,me));
		request.setAttribute("requestFriend", FriendshipService.getInstance().getRequest(me));
		request.setAttribute("listSchool", SchoolService.getInstance().findAll());
		request.setAttribute("profileUser",user);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/edit-profile.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String profileId = request.getParameter("profileUserId");
		User user = UserService.getInstance().findById(Integer.parseInt(profileId));
		User me = (User) SessionUtil.getInstance().getValue(request, "user");
		String errorChange = "";
		if (action.equals("editAvatar")) {
			Part filePart = request.getPart("avatar");
			user = UserService.getInstance().updateImg(user,filePart,"avatar");
			ModifyService.getInstance().createModify(user,user,"Chỉnh sửa ảnh đại diên");
		} else if (action.equals("editBackground")) {
			Part filePart1 = request.getPart("background");
			user = UserService.getInstance().updateImg(user,filePart1,"background");
			ModifyService.getInstance().createModify(user,user,"Chỉnh sửa ảnh bìa");
		} else if (action.equals("editProfile")) {
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String gender = request.getParameter("gender");
			String school = request.getParameter("school");
			String dateOfBirth = request.getParameter("dateOfBirth");
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setFullName(firstName + " " + lastName);
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
		} else if (action.equals("changePassword")) {
			String passwordCurrent = request.getParameter("passwordCurrent");
			if(!EncodeUtil.toSHA1(passwordCurrent).equals(user.getPassword())) {
				errorChange+="errorChange";
			} else {
				String newPassword = request.getParameter("newPassword");
				user.setPassword(EncodeUtil.toSHA1(newPassword));
				UserService.getInstance().update(user);
			}
		} else if (action.equals("addFriend")) {
			FriendshipService.getInstance().addFriend(me, user);
		} else if (action.equals("unfriend")) {
			String idFriendship = request.getParameter("idFriendship");
			FriendshipService.getInstance().unFriend(idFriendship);
		}
		if (errorChange.equals("")) {
			response.sendRedirect("/PBL3/profile?id=" +user.getId());
		} else {
			response.sendRedirect("/PBL3/profile?id=" +user.getId()+ "&ms=" + errorChange);
		}
	}
}
