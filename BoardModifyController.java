package org.yakusoku.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.yakusoku.model.*;

@WebServlet("/board/modify.yaku")
public class BoardModifyController extends HttpServlet {
	BoardDao dao = new BoardDao();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int no = Integer.parseInt(req.getParameter("no"));
		
		
		
		BoardDto dto = dao.selectOne(no);
		
		req.setAttribute("detail", dto);
	
		String viewName = "/WEB-INF/views/board/modify.jsp";
		RequestDispatcher view = req.getRequestDispatcher(viewName);
		view.forward(req, resp);
			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		int no = Integer.parseInt(req.getParameter("no"));
		
		BoardDto modi = new BoardDto(no, title, content);
		
		dao.update(modi);
		
		resp.sendRedirect("detail.yaku?no=" + no);
	}
}
