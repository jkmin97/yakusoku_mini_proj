package org.yakusoku.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.yakusoku.dbcp.JdbcUtil;



public class BoardDao {
   Connection conn;
   PreparedStatement stmt;
   ResultSet rs;
   
   String SQL_SELECT = "SELECT * FROM BOARD ORDER BY NO DESC";
   String SQL_SEARCH_TITLE = "SELECT * FROM BOARD WHERE TITLE LIKE '%'||?||'%' or AUTHOR LIKE '%'||?||'%' or CONTENT LIKE '%'||?||'%' ORDER BY NO DESC";
   String SQL_SELECT_ONE = "SELECT * FROM BOARD WHERE NO=?";
   String SQL_INSERT = "insert into BOARD (no, author, title, content) values(board_seq.nextval, ?,?,?)";
   String SQL_READCNT = "UPDATE BOARD SET READCNT=READCNT+1 WHERE NO=?";
   String SQL_UPDATE = "UPDATE BOARD SET TITLE=?, CONTENT=? WHERE NO=?";
   String SQL_DELETE = "DELETE FROM BOARD WHERE NO=?";
   String SQL_REPLY = "INSERT INTO REPLY VALUES (?, ?, ?)";
   String SQL_REPLY_VIEW = "SELECT * FROM REPLY WHERE NO=?";
   
   public ArrayList<BoardDto> selectAll() {
	   ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	   conn = JdbcUtil.getConnection();
	   try {
		stmt = conn.prepareStatement(SQL_SELECT);
		rs = stmt.executeQuery();
		while(rs.next()) {
			int no = rs.getInt("no");
			String author = rs.getString("author");
			String title = rs.getString("title");
			String writeday = rs.getString("writeday");
			int readcnt = rs.getInt("readcnt");
			
			
			list.add(new BoardDto(no, author, title, writeday, readcnt));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JdbcUtil.close(conn, stmt, rs);
	}
      return list;
   }
   
   public BoardDto selectOne(BoardDto dto) {
      return null;
   }
   
   public BoardDto selectOne(int noParam) {
	   BoardDto detail = null;
	  conn = JdbcUtil.getConnection();
	  try {
		stmt = conn.prepareStatement(SQL_SELECT_ONE);
		stmt.setInt(1, noParam);
		rs=stmt.executeQuery();
		if(rs.next()) {
			int no = rs.getInt("no");
			String author = rs.getString("author");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writeday = rs.getString("writeday");
			int readcnt = rs.getInt("readcnt");
			
			int cnt = stmt.executeUpdate();
			if(cnt>0) {
				conn.commit(); 
				
				
			} else {
				conn.rollback();
			} 
		
			detail = new BoardDto(no, author, title, content, writeday, readcnt);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JdbcUtil.close(conn, stmt, rs);
	}
      return detail;
      
   }
   
   public void update(BoardDto dto) {
      conn=JdbcUtil.getConnection();
      try {
		stmt=conn.prepareStatement(SQL_UPDATE);
		stmt.setString(1, dto.getTitle());
		stmt.setString(2, dto.getContent());
		stmt.setInt(3, dto.getNo());
		
		int cnt = stmt.executeUpdate();
		if(cnt>0) {
			conn.commit();
		} else {
			conn.rollback();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JdbcUtil.close(conn, stmt, rs);
	}
      
   }

   public void delete(int no) {
      conn=JdbcUtil.getConnection();
      try {
		stmt=conn.prepareStatement(SQL_DELETE);
		stmt.setInt(1, no);
		int cnt=stmt.executeUpdate();
		
		if(cnt>0) {
			conn.commit();
		} else {
			conn.rollback();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JdbcUtil.close(conn, stmt, rs);
	}
      
   }

   public ArrayList<BoardDto> search(String search) {
	   ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	   conn = JdbcUtil.getConnection();
	   try {
		stmt = conn.prepareStatement(SQL_SEARCH_TITLE);
		stmt.setString(1, search);
		stmt.setString(2, search);
		stmt.setString(3, search);
		rs = stmt.executeQuery();
		while(rs.next()) {
			int no = rs.getInt("no");
			String author = rs.getString("author");
			String title = rs.getString("title");
			String writeday = rs.getString("writeday");
			int readcnt = rs.getInt("readcnt");
			
			
			list.add(new BoardDto(no, author, title, writeday, readcnt));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JdbcUtil.close(conn, stmt, rs);
	}
      return list;
   }
   
   
   public void readCnt(int no) {
	   conn=JdbcUtil.getConnection();
	   try {
		stmt=conn.prepareStatement(SQL_READCNT);
		stmt.setInt(1, no);
		int cnt = stmt.executeUpdate();
		if(cnt>0) {
			conn.commit();
		} else {
			conn.rollback();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JdbcUtil.close(conn, stmt, rs);
	}
	   
   }

   public void insert(BoardDto dto) {
	   conn=JdbcUtil.getConnection();
	   System.out.println(dto);
	   try {
		stmt=conn.prepareStatement(SQL_INSERT);
		stmt.setString(1, dto.getAuthor());
		stmt.setString(2, dto.getTitle());
		stmt.setString(3, dto.getContent());
		int a = stmt.executeUpdate();
		if(a>0) {
			conn.commit();
		} else {
			conn.rollback();
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JdbcUtil.close(conn, stmt, rs);
	}
	   
   }
   
 
   
   
}