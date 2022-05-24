package org.yakusoku.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.yakusoku.model.*;
@WebServlet("/board/list.yaku")
public class BoardListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BoardDao boardDao = new BoardDao();
		ArrayList<BoardDto> list = (ArrayList<BoardDto>)boardDao.selectAll();
		req.setAttribute("list", list);
		
		String viewName = "/WEB-INF/views/board/list.jsp";
		RequestDispatcher view = req.getRequestDispatcher(viewName);
		view.forward(req, resp);
	}

}
