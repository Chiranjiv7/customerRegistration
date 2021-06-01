<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<h1>You have login successfully.</h1>
	</div>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

%>
<h2 align="center"><font><strong>Customer Detail</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr>
<td><b>partyid</b></td>
<td><b>firstname</b></td>
<td><b>lastname</b></td>
<td><b>address</b></td>
<td><b>city</b></td>
<td><b>zip</b></td>
<td><b>state</b></td>
<td><b>country</b></td>
<td><b>phone</b></td>
</tr>
<%
try{ 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerreg","root","Chiranjiv@123");
Statement st=con.createStatement();
String sql ="SELECT * FROM party";

ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%>
<tr>

<td><%=rs.getString("partyid") %></td>
<td><%=rs.getString("firstname") %></td>
<td><%=rs.getString("lastname") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("city") %></td>
<td><%=rs.getString("zip") %></td>
<td><%=rs.getString("state") %></td>
<td><%=rs.getString("country") %></td>
<td><%=rs.getString("phone") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>