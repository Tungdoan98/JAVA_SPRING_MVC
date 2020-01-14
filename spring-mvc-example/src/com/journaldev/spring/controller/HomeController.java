package com.journaldev.spring.controller;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Locale;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.journaldev.spring.connection.ConnectionUtils;
import com.journaldev.spring.encode.SymetriCryptor;

@Controller
public class HomeController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String sigin(Locale locale, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/sinup", method = RequestMethod.GET)
	public String sinup(Locale locale, Model model) {
		return "sinup";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET )
	public String checkindex(Locale locale, Model model,HttpSession session) {
		
		if(session.getAttribute("email") != null) {
			return "index";
		}
		return "login";
	}
		
	@RequestMapping("logout")
	public String logout(HttpServletRequest request,HttpSession session) {
		session.removeAttribute("email");
		session.setAttribute("email", null);
		return "login";	
	}
	
	
	@RequestMapping("index")
	public String login(HttpServletRequest request,HttpSession session) throws NoSuchAlgorithmException, InvalidKeyException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException{
		int d=0;
		String email = request.getParameter("Email");
		String pass = request.getParameter("Password");
		Connection connection;
		try {
			 connection = ConnectionUtils.getMyConnection();
			 Statement statement = connection.createStatement();
			 SymetriCryptor SC = new SymetriCryptor();
			 String en_msg = SC.encrypttext1(pass, SC.getSecretKeySpec());
			 String sql = "SELECT * FROM ADMIN";
			 ResultSet rs = statement.executeQuery(sql);
			 while (rs.next()) {
				 if (email.trim().equals(rs.getString(3)) && en_msg.trim().equals(rs.getString(4))) {
					 session.setAttribute("email", email);
						d=1;
					}
			 }
			 connection.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(d==1) {
			return "index";
		}
		else {
			request.setAttribute("mess", "Login failure");
			return "login";	
		}
	}
	
	@RequestMapping("register")
	public String register(HttpServletRequest request) throws UnsupportedEncodingException, NoSuchAlgorithmException, InvalidKeyException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException{
		int d=0;
		int id_max = 0; 
		request.setCharacterEncoding("utf-8");
		String firstname = request.getParameter("firstname");
		System.out.println(firstname);
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Connection connection;
		try {
			 connection = ConnectionUtils.getMyConnection();
			 Statement statement = connection.createStatement();	
			 String sql = "SELECT * FROM ADMIN";
			 ResultSet rs = statement.executeQuery(sql);
			 while (rs.next()) {
				 if(email.trim().equals(rs.getString(3).trim())) {
					 request.setAttribute("mess1", "Email already exists");
					 return "sinup";
				 }
				 else {
					 int id = rs.getInt(1);
					 if(id>id_max) {
						 id_max = id;
					 }
				 }			 
			 }
			 int id_new = id_max + 1;
			 SymetriCryptor SC = new SymetriCryptor();
			 String en_msg = SC.encrypttext1(password, SC.getSecretKeySpec());
			 String query = "INSERT INTO ADMIN(ID, NAME, EMAIL, PASSWORD, ADMIN) VALUES ('"+id_new+"', N'"+firstname+"', '"+email+"', '"+en_msg+"', '0')";
			 ResultSet rs1 = statement.executeQuery(query);
			 if(rs1 != null) {
				 d=1;
			 }
			 connection.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(d==1) {
			request.setAttribute("mess2", "Sign Up Success");
			 return "sinup";
		}
		else {
			request.setAttribute("mess1", "registration failed");
			 return "sinup";	
		}
	}
	
	
}