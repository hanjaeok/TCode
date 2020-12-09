package com.hanker.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseUtil {

	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:log4jdbc:mysql://localhost:63306/tcode?useSSL=false&serverTimezone=UTC";
			String dbID = "hanker";
			String dbPassword = "hanker";
			Class.forName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
			
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch(Exception e) {
			e.printStackTrace();
		}
				
		return null;
	}
}
