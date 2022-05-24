package org.yakusoku.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.yakusoku.dbcp.JdbcUtil;

public class YakusokuAlertDao {
	Connection conn;
	PreparedStatement stmt;
	ResultSet rs;
	
	final String SQL_SELECT_ALL = "SELECT * FROM YAKUALERT ORDER BY ALERT_NO DESC";
	final String SQL_INSERT = "INSERT INTO YAKUALERT (ALERT_NO, ALERT_AUTHOR, ALERT_TITLE, ALERT_CONTENT) VALUES (ALERT_SEQ.NEXTVAL, ?, ?, ?)";
	final String SQL_UPDATE = "UPDATE YAKUALERT SET ALERT_TITLE=?, ALERT_CONTENT=? WHERE ALERT_NO=?";
	final String SQL_DELETE = "DELETE FROM YAKUALERT WHERE ALERT_NO=?";
	final String SQL_SELECT_TITLE = "SELECT * FROM YAKUALERT WHERE ALERT_TITLE LIKE '%'||?||'%' or ALERT_AUTHOR LIKE '%'||?||'%' or ALERT_CONTENT LIKE '%'||?||'%' ORDER BY ALERT_NO DESC";
	
	public ArrayList<YakusokuAlertDto> list() {
		ArrayList<YakusokuAlertDto> selectAll = new ArrayList<YakusokuAlertDto>();
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_SELECT_ALL);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int alert_no = rs.getInt("alert_no");
				String alert_author = rs.getString("alert_author");
				String alert_title = rs.getString("alert_title");
				String alert_writeday = rs.getString("alert_writeday");
				int alert_readcnt = rs.getInt("alert_readcnt");
				
				selectAll.add(new YakusokuAlertDto(alert_no, alert_author, alert_title, alert_writeday, alert_readcnt));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		return selectAll;
	}
	
	public void insert(YakusokuAlertDto dto) {
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_INSERT);
			stmt.setString(1, dto.getAlert_author());
			stmt.setString(2, dto.getAlert_title());
			stmt.setString(3, dto.getAlert_content());
			int cnt = stmt.executeUpdate();
			if(cnt > 0) {
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
	}
	
	public void delete(int no) {
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_DELETE);
			stmt.setInt(1, no);
			int cnt = stmt.executeUpdate();
			if(cnt > 0) {
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
	}
	
	public void update(YakusokuAlertDto dto) {
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_UPDATE);
			stmt.setString(1, dto.getAlert_author());
			stmt.setString(2, dto.getAlert_title());
			stmt.setString(3, dto.getAlert_content());
			int cnt = stmt.executeUpdate();
			if(cnt > 0) {
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
	}
	
	public YakusokuAlertDto detail(int no) {
		YakusokuAlertDto select_title = null;
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_SELECT_TITLE);
			stmt.setInt(1, no);
			rs = stmt.executeQuery();
			if(rs.next()) {
				int alert_no = rs.getInt("alert_no");
				String alert_author = rs.getString("alert_author");
				String alert_title = rs.getString("alert_title");
				String alert_content = rs.getString("alert_content");
				String alert_writeday = rs.getString("alert_writeday");
				int alert_readcnt = rs.getInt("alert_readcnt");
				
				select_title = new YakusokuAlertDto(alert_no, alert_author, alert_title, alert_content, alert_writeday, alert_readcnt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		return select_title;
	}
}
