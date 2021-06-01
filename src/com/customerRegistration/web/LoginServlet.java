package com.customerRegistration.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customerRegistration.database.Logindao;
import com.customerRegistration.login.Logindata;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.getWriter().println("Successfully Login");
		String userloginid = request.getParameter("userloginid");
		String password = request.getParameter("password");
		
		Logindata logindata = new Logindata();
		
		logindata.setuserloginid(userloginid);
		logindata.setpassword(password);
		
		Logindao logindao = new Logindao();
		
		if (logindao.validate(logindata)) {
			response.sendRedirect("Success.jsp");

		} else {
			
			response.sendRedirect("Login.jsp");

		}
	}

}
