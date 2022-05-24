package org.yakusoku.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.yakusoku.model.*;


@WebServlet("/board/delete.yaku")
public class BoardDeleteController extends HttpServlet {
	BoardDao dao = new BoardDao();

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
	
		int no = Integer.parseInt(req.getParameter("no"));
		
		dao.delete(no);
		
		
		resp.sendRedirect("list.yaku");
	}
}
