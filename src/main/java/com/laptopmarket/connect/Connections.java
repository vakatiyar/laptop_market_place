package com.laptopmarket.connect;

import java.sql.*;

public class Connections {
	public static final String URL="jdbc:mysql://localhost:3306/sopra";
	public static final String Password="Asdfg@1400";
	public static Connection con;

	public static Connection CreateC() {
		// TODO Auto-generated method stub
		try {
			
		Class.forName("com.mysql.cj.jdbc.Driver");
		con =DriverManager.getConnection(URL, "root",Password );
		
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return con;
		
}

}