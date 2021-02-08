package com.luv2code.login.jdbc;

import java.sql.*;

public class ConnectionProvider {
	static Connection con=null;
	static{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web_student_tracker?useSSL=false", "webstudent", "webstudent");
			}catch(Exception e){}
	}
	public static Connection getCon(){
		return con;
	}
}
