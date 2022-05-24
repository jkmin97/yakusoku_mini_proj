package org.yakusoku.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.yakusoku.model.UserDao;
import org.yakusoku.model.UserDto;


@WebServlet("/user/join.yaku")
public class UserJoinServlet extends UserCommanderServlet {

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String phone = req.getParameter("phone");
		String nickname = req.getParameter("nickname");
		String gender = req.getParameter("gender");
		int age = Integer.parseInt(req.getParameter("age"));
		String job = req.getParameter("job");
		String home = req.getParameter("home1") + " " + req.getParameter("home2");
		String religion = req.getParameter("religion");
		String body = req.getParameter("body");
		String divorce = req.getParameter("divorce");
		String other = req.getParameter("other");
		
		UserDto dto = new UserDto(0, id, pw, phone, nickname, gender, age, job, home, religion, body, divorce, other);
	
		UserDao userDao = new UserDao();
		
		userDao.insert(dto);
		
		resp.sendRedirect(req.getContextPath() + "/index.jsp");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String viewName = "user/join.jsp";
		forward(viewName, req, resp);
	}
	
	
}
