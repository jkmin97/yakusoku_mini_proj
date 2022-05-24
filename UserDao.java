package org.yakusoku.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.yakusoku.dbcp.JdbcUtil;

////create table yakuuser (
//no number(5) primary key,
//id varchar2(30) not null,
//pw varchar2(20) not null,
//phone varchar2(13) not null,
//nickname varchar2(40) not null unique,
//photo blob,
//gender varchar2(10) not null,
//age number(2) not null,
//job varchar2(40) not null,
//home varchar2(200) not null,
//religion varchar2(50),
//body varchar2(100) not null,
//divorce varchar2(30),
//other varchar2(2000));


public class UserDao {

	Connection conn;
	PreparedStatement stmt;
	ResultSet rs;
	
	final String SQL_CHECK_ID = "SELECT * FROM YAKUUSER WHERE ID=?";
	final String SQL_SELECT_ALL = "SELECT * FROM YAKUUSER ORDER BY NO DESC";
	final String SQL_INSERT = "INSERT INTO YAKUUSER (no, id, pw, phone, nickname, gender, age, job, home, religion, body, divorce, other)  VALUES (yakusoku_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	final String SQL_DELETE = "DELETE FROM YAKUUSER WHERE NO=?";
	final String SQL_UPDATE = "UPDATE YAKUUSER SET PHONE=?, NICKNAME=?, JOB=?, HOME=?, RELIGION=?, BODY=?, DIVORCE=?, OTHER=? WHERE NO=?";
	final String SQL_SELECT_NO = "SELECT * FROM YAKUUSER WHERE NO=?";
	final String SQL_LOGIN = "SELECT * FROM YAKUUSER WHERE ID=?";
	      
	public UserDto login(String idd) {
		UserDto mem = null;
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_LOGIN);
			stmt.setString(1, idd);
			rs = stmt.executeQuery();
			if(rs.next()) {
				int no = rs.getInt("no");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String phone = rs.getString("phone");
				String nickname = rs.getString("nickname");
				String gender = rs.getString("gender");
				int age = rs.getInt("age");
				String job = rs.getString("job");
				String home = rs.getString("home");
				String religion = rs.getString("religion");
				String body = rs.getString("body");
				String divorce = rs.getString("divorce");
				String other = rs.getString("other");
				
				mem = new UserDto(no, id, pw, phone, nickname, gender, age, job, home, religion, body, divorce, other);	
			} else {
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mem;
	}

	public int CheckId(String id) {
		int idCheck = 0;
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_CHECK_ID);
			stmt.setString(1, id);
			
			rs = stmt.executeQuery();
			if(rs.next() || id.equals("")) {
				idCheck = 0;
			} else {
				idCheck = 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		
		return idCheck;
	}
	
	   public void insert(UserDto dto) {
		      conn = JdbcUtil.getConnection();
		      try {
		         stmt = conn.prepareStatement(SQL_INSERT);
		         
		         stmt.setString(1, dto.getId());
		         stmt.setString(2, dto.getPw());
		         stmt.setString(3, dto.getPhone());
		         stmt.setString(4, dto.getNickname());
		         stmt.setString(5, dto.getGender());
		         stmt.setInt(6, dto.getAge());
		         stmt.setString(7, dto.getJob());
		         stmt.setString(8, dto.getHome());
		         stmt.setString(9, dto.getReligion());
		         stmt.setString(10, dto.getBody());
		         stmt.setString(11, dto.getDivorce());
		         stmt.setString(12, dto.getOther());
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
		   
		   public void update(UserDto dto) {
		      conn = JdbcUtil.getConnection();
		      try {
		         stmt = conn.prepareStatement(SQL_UPDATE);
		         stmt.setString(1, dto.getPhone());
		         stmt.setString(2, dto.getNickname());
		         stmt.setString(3, dto.getJob());
		         stmt.setString(4, dto.getHome());
		         stmt.setString(5, dto.getReligion());
		         stmt.setString(6, dto.getBody());
		         stmt.setString(7, dto.getDivorce());
		         stmt.setString(8, dto.getOther());
		         stmt.setInt(9, dto.getNo());
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
		   
		   public UserDto selectNo(int no) {
		      UserDto yaku = null;
		      conn = JdbcUtil.getConnection();
		      try {
		         stmt = conn.prepareStatement(SQL_SELECT_NO);
		         stmt.setInt(1, no);
		         rs = stmt.executeQuery();
		         if(rs.next()) {
		            String nickname = rs.getString("nickname");
		            String id = rs.getString("id");
		            String pw = rs.getString("pw");
		            String phone = rs.getString("phone");
		            String gender = rs.getString("gender");
		            int age = rs.getInt("age");
		            String job = rs.getString("job");
		            String home = rs.getString("home");
		            String religion = rs.getString("religion");
		            String body = rs.getString("body");
		            String divorce = rs.getString("divorce");
		            String other = rs.getString("other");
		            
		            yaku = new UserDto(no, id, pw, phone, nickname, gender, age, job, home, religion, body, divorce, other);
		         }
		      } catch (SQLException e) {
		         e.printStackTrace();
		      } finally {
		         JdbcUtil.close(conn, stmt, rs);
		      }
		      return yaku;
		   }

}
