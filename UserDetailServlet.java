package org.yakusoku.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.yakusoku.model.UserDto;

@WebServlet("/user/detail.yaku")
public class UserDetailServlet extends UserCommanderServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		UserDto dto = (UserDto)session.getAttribute("member");
		
		req.setAttribute("dto", dto);
		
		String viewName = "user/detail.jsp";
		forward(viewName, req, resp);
	}
}
