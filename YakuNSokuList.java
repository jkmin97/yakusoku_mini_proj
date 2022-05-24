package org.yakusoku.yakunsoku;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.yakusoku.model.UserDto;
import org.yakusoku.model.YakuNSokuDao;


@WebServlet("/yakunsoku/list.yaku")
public class YakuNSokuList extends YakuNSokuCommanderServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		YakuNSokuDao dao = new YakuNSokuDao();
		
		ArrayList<UserDto> list = dao.list();
		
		req.setAttribute("list", list);
		
		String viewName = "yakunsoku/list.jsp";
		forward(viewName, req, resp);
	}
}
