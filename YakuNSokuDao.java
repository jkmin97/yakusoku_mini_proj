package org.yakusoku.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.yakusoku.dbcp.JdbcUtil;

public class YakuNSokuDao {
	   Connection conn;
	   PreparedStatement stmt;
	   ResultSet rs;
	   
	   final String SQL_LIST = "SELECT * FROM YAKUUSER";
	   
	   
	   public ArrayList<UserDto> list() {
		   
		   ArrayList<UserDto> list = new ArrayList<UserDto>();
		   
		   conn = JdbcUtil.getConnection();
		   
		   try {
			stmt = conn.prepareStatement(SQL_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
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
		        
		        list.add(new UserDto(no, id, pw, phone, nickname, gender, age, job, home, religion, body, divorce, other));
		        
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return list;
	   }
	
}
