package com.customerRegistration.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.customerRegistration.login.Logindata;

public class Logindao {
	private String Url = "jdbc:mysql://localhost:3306/customerreg";
	private String Uname = "root";
	private String Password = "Chiranjiv@123";
	private String Driver = "com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(Driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(Url, Uname, Password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public boolean validate(Logindata logindata)
	{
		boolean status = false;
		
		loadDriver(Driver);
		Connection con = getConnection();
		
		String sql = "select * from userlogin where userloginid = ? and password =?";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, logindata.getuserloginid());
		ps.setString(2, logindata.getpassword());
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
}	

