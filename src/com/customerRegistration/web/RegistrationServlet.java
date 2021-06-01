package com.customerRegistration.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con;
	PreparedStatement ps;
	PreparedStatement ps2;
	PreparedStatement ps3;
	
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerreg","root","Chiranjiv@123");
			
			String firstName = request.getParameter("firstname");
			String lastName = request.getParameter("lastname");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String zip = request.getParameter("zip");
			String state = request.getParameter("state");
			String country = request.getParameter("country");
			String phone = request.getParameter("phone");
			String userloginid = request.getParameter("userloginid");
			String password = request.getParameter("password");
			
			ps = con.prepareStatement("insert into party(firstname,lastname,address,city,zip,state,country,phone) values(?,?,?,?,?,?,?,?)");
			ps2=con.prepareStatement("insert into userlogin(partyid,userloginid,password) values(?,?,?)");
			
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, address);
			ps.setString(4, city);
			ps.setString(5, zip);
			ps.setString(6, state);
			ps.setString(7, country);
			ps.setString(8, phone);
			
			ps.executeUpdate();
			
			ps3=con.prepareStatement("select max(partyid) from party");
			ResultSet rs=ps3.executeQuery();
			
			rs.next();
			
			int id;
			id = rs.getInt(1);
			
	
			ps2.setInt(1, id);
			ps2.setString(2, userloginid);
			ps2.setString(3, password);
			ps2.executeUpdate();
			
			System.out.println("Thank You");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		response.getWriter().println("Successfully Register");
		response.sendRedirect("Login.jsp");	
	}

}
