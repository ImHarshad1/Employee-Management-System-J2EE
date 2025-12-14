package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class EmployeeData {
	
	private static final String url="jdbc:postgresql://localhost:5432/employee";
	private static final String username = "postgres";
	private static final String password = "root";
	
	public static Connection createDBConnection(){
		Connection connection = null;
		try {
			Class.forName("org.postgresql.Driver");
				
			 connection = DriverManager.getConnection(url, username, password);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return connection;
	}

}
