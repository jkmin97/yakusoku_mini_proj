package org.yakusoku.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.yakusoku.model.UserDao;

@WebServlet("/user/check.yaku")
public class UserIdCheckServlet extends UserCommanderServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String userId= req.getParameter("userId");
		PrintWriter out = resp.getWriter();
		UserDao userDao = new UserDao();
		
		int idCheck = userDao.CheckId(userId);
		
		out.write(idCheck + "");
	}
}
