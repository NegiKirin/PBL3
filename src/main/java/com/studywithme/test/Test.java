package com.studywithme.test;

import java.io.File;
import java.io.FileInputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;

import com.studywithme.dao.UserDAO;
import com.studywithme.model.User;

public class test {
	public static void main(String[] args) throws MalformedURLException {
		File file =new File("src/main/webapp/template/image/ava.png");
		URI fileUri = file.toURI();
		System.out.println("URI:" + fileUri);
		URL fileUrl = file.toURI().toURL();
		System.out.println("URL:" + fileUrl);
		byte[] bFile = new byte[(int) file.length()];
        
        try {
	     FileInputStream fileInputStream = new FileInputStream(file);
	     //convert file into array of bytes
	     fileInputStream.read(bFile);
	     fileInputStream.close();
        } catch (Exception e) {
	     e.printStackTrace();
        }
        
//        User user = new User();
//        
//        user.setid("SWM1679943989574788");
//        
//        user.setAvatar(bFile);
//        
//        UserDAO Userdao = new UserDAO();
//        Userdao.updateAvatar(user);
	}
}
