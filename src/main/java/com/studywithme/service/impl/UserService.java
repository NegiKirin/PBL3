package com.studywithme.service.impl;


import java.io.*;
import java.nio.file.Files;
import java.util.Base64;
import java.sql.Date;

import com.studywithme.dao.impl.UserDAO;
import com.studywithme.model.User;
import com.studywithme.service.IUserService;
import com.studywithme.util.EncodeUtil;

import javax.servlet.http.Part;

public class UserService implements IUserService {
	private static IUserService userService;
	public static IUserService getInstance() {
		if(userService == null) {
			userService = new UserService();
		}
		return userService;
	}
	@Override
	public User findByEmailAndPassword(String email, String password) {
		password = EncodeUtil.toSHA1(password);
		return UserDAO.getInstance().findByEmailAndPasswordAndStatus(email, password);
	}

	@Override
	public User register(String lastName, String firstName, String email, String password, Integer gender) {
		User user = new User();
		user.setEmail(email);
		user.setPassword(EncodeUtil.toSHA1(password));
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setFullName(firstName+" "+lastName);
		user.setGender(gender);
		user.setCreatedDate(new Date(System.currentTimeMillis()));
		String path = "\\GitHub\\PBL3\\src\\main\\webapp\\template\\image";
		try {
			File avatar = new File(path + File.separator + "avatarDefault.png");
			byte[] dataAvatar = Files.readAllBytes(avatar.toPath());
			String base64 = Base64.getEncoder().encodeToString(dataAvatar);
			user.setAvatar(base64);
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			File avatar = new File(path + File.separator + "backgroundDefault.png");
			byte[] dataBackground = Files.readAllBytes(avatar.toPath());
			String base64 = Base64.getEncoder().encodeToString(dataBackground);
			user.setBackground(base64);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return UserDAO.getInstance().save(user);
	}

	@Override
	public User findByEmail(String email) {
		return UserDAO.getInstance().findByEmail(email);
	}

	@Override
	public User findById(Integer id) {
		return UserDAO.getInstance().findById(id);
	}

	@Override
	public User update(User user) {
		return UserDAO.getInstance().update(user);
	}

	@Override
	public User updateImg(User user, Part filePart, String img) {
		InputStream fileContent = null;
		try {
			fileContent = filePart.getInputStream();
			final byte[] bytes = new byte[fileContent.available()];
			fileContent.read(bytes);
			if(img.equals("avatar")){
				String base64 = Base64.getEncoder().encodeToString(bytes);
				user.setAvatar(base64);
			} else if (img.equals("background")) {
				String base64 = Base64.getEncoder().encodeToString(bytes);
				user.setBackground(base64);
			}
			fileContent.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return UserDAO.getInstance().update(user);
	}
}
