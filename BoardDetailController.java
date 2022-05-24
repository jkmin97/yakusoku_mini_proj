package org.yakusoku.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.yakusoku.model.*;

@WebServlet("/board/detail.yaku")
public class BoardDetailController extends HttpServlet {
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		
		int no = Integer.parseInt(req.getParameter("no"));
		dao.readCnt(no);
		dto = dao.selectOne(no);
		req.setAttribute("detail", dto);
		
		String viewName = "/WEB-INF/views/board/detail.jsp";
		RequestDispatcher view = req.getRequestDispatcher(viewName);
		view.forward(req, resp);
	}
}
