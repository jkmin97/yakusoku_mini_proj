package org.yakusoku.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.yakusoku.dbcp.JdbcUtil;

public class YakusokuPackageDao {
	Connection conn;
	PreparedStatement stmt;
	ResultSet rs;
	
	String SQL_SELECT_ALL = "SELECT * FROM YAKUPACKAGE ORDER BY PACKAGE_NO DESC";
	
	public ArrayList<YakusokuPackageDto> list() {
		ArrayList<YakusokuPackageDto> selectAll = new ArrayList<YakusokuPackageDto>();
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SQL_SELECT_ALL);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int package_no = rs.getInt("package_no");
				String package_name = rs.getString("package_name");
				String package_comment = rs.getString("package_comment");
				String package_price = rs.getString("package_price");
				selectAll.add(new YakusokuPackageDto(package_no, package_name, package_comment, package_price));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		return selectAll;
	}
} // 지울 거.
