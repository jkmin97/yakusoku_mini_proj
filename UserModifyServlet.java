package org.yakusoku.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.yakusoku.model.UserDto;

@WebServlet("/user/modify.yaku")
public class UserModifyServlet extends UserCommanderServlet {

	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String viewName = "user/modify.jsp";
		forward(viewName, req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(req.getParameter("no"));
		String phone = req.getParameter("phone");
		String nickname = req.getParameter("nickname");
		String job = req.getParameter("job");
		String home1 = req.getParameter("home1");
		String home2 = req.getParameter("home2");
		String home = home1+ " " +home2;
		String religion = req.getParameter("religion");
		String body = req.getParameter("body");
		String divorce = req.getParameter("divorce");
		String other = req.getParameter("other");
		
		UserDto dto = new UserDto(no, phone, nickname, job, home, religion, body, divorce, other);
		userDao.update(dto);
		
		resp.sendRedirect("detail.yaku");
	}
}
