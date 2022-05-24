package org.yakusoku.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class YakusokuDatingDao {
	Connection conn;
	PreparedStatement stmt;
	ResultSet rs;
	
	final String SQL_SELECT_CONCEPT = "SELECT * FROM DATING WHERE DATING_CONCEPT=?";
	

}
