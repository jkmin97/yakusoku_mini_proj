package org.yakusoku.center;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.yakusoku.model.UserDao;

public class Commander extends HttpServlet {

	UserDao userDao = new UserDao();
	
	
	protected void forward(String url, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String viewName = "/WEB-INF/views/" + url;
		RequestDispatcher view = req.getRequestDispatcher(viewName);
		view.forward(req, resp);
	};
	

}
