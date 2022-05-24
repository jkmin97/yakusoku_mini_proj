package org.yakusoku.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.yakusoku.dbcp.JdbcUtil;

public class YakusokuPlaceDao {
	Connection conn;
	PreparedStatement stmt;
	ResultSet rs;
	
	String SQL_SELECT_ALL = "SELECT * FROM PLACE ORDER BY PLACE_NO DESC";
	String SQL_INSERT = "INSERT INTO PLACE VALUES(PLACE_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?)";
	String SQL_DELETE = "DELETE FROM PLACE WHERE PLACE_NO=?";
	String SQL_UPDATE = "UPDATE PLACE SET PLACE_NAME=?, PLACE_ADDRESS=?, PLACE_STAR=?, PLACE_OTHER=?, PLACE_SITE=?, PLACE_RESERVATION=? WHERE PLACE_NO=?";
	String SQL_SELECT_NO = "SELECT * FROM PLACE WHERE PLACE_NO=?";
	
	public ArrayList<YakusokuPlaceDto> list() {
		ArrayList<YakusokuPlaceDto> selectAll = new ArrayList<YakusokuPlaceDto>();
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_SELECT_ALL);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int place_no = rs.getInt("place_no");
				String place_name = rs.getString("place_name");
				String place_address = rs.getString("place_address");
				int place_star = rs.getInt("place_star");
				String place_other = rs.getString("place_other");
				String place_site = rs.getString("place_site");
				String place_reservation = rs.getString("place_reservation");
				selectAll.add(new YakusokuPlaceDto(place_no, place_name, place_address, place_star, place_other, place_site, place_reservation));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		return selectAll;
	}
	
	public void insert(YakusokuPlaceDto dto) {
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_INSERT);
			stmt.setString(1, dto.getPlace_name());
			stmt.setString(2, dto.getPlace_address());
			stmt.setInt(3, dto.getPlace_star());
			stmt.setString(4, dto.getPlace_other());
			stmt.setString(5, dto.getPlace_site());
			stmt.setString(6, dto.getPlace_reservation());
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
	
	public void modify(YakusokuPlaceDto dto) {
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_UPDATE);
			stmt.setString(1, dto.getPlace_name());
			stmt.setString(2, dto.getPlace_address());
			stmt.setInt(3, dto.getPlace_star());
			stmt.setString(4, dto.getPlace_other());
			stmt.setString(5, dto.getPlace_site());
			stmt.setString(6, dto.getPlace_reservation());
			stmt.setInt(7, dto.getPlace_no());
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
	
	public YakusokuPlaceDto detail(int no) {
		YakusokuPlaceDto yaku = null;
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_SELECT_NO);
			stmt.setInt(1, no);
			rs = stmt.executeQuery();
			if(rs.next()) {
				String place_name = rs.getString("place_name");
				String place_address = rs.getString("place_address");
				int place_star = rs.getInt("place_star");
				String place_other = rs.getString("place_other");
				String place_site = rs.getString("place_site");
				String place_reservation = rs.getString("place_reservation");
				
				yaku = new YakusokuPlaceDto(no, place_name, place_address, place_star, place_other, place_site, place_reservation);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		return yaku;
	}
}
