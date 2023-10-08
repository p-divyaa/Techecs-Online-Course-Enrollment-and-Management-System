package com.techecs.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import com.techecs.beans.User;
import com.techecs.dao.UserDao;

public class LoginUser1 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDao dao;

	@Autowired
	public LoginUser1(UserDao dao) {
		this.dao = dao;
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		User user = dao.get("yuvrajsinhab2");

		out.println(user.getName());
	}

}
