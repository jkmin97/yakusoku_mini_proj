package org.yakusoku.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.yakusoku.model.UserDao;
import org.yakusoku.model.UserDto;


@WebServlet("/user/login.yaku")
public class UserLoginServlet extends UserCommanderServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String viewName = "user/login.jsp";
		forward(viewName, req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pwinput = req.getParameter("pwinput");
		
		UserDto member = userDao.login(id);
		
		HttpSession session = req.getSession();
		
		int logincheck = 0;
		
		if(member==null) {
			logincheck = 1;
		} else {
			if(!pwinput.equals(member.getPw())) {
				logincheck = 2;
			}
			else if(pwinput.equals(member.getPw())){
				
				session.setAttribute("member", member);
				
			}
		}
		PrintWriter out = resp.getWriter();
		out.print(logincheck + "");
	}
	
	
}
