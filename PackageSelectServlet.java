package org.yakusoku.pack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/package/select.yaku")
public class PackageSelectServlet extends PackageCommanderServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String viewName = "package/select.jsp";
		forward(viewName, req, resp);
	}
}
