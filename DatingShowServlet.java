package org.yakusoku.dating;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dating/map.yaku")
public class DatingShowServlet extends DatingCommanderServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String viewName = "dating/map.jsp";
		forward(viewName, req, resp);
	}
}
