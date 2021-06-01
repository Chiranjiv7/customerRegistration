<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%
String id = request.getParameter("partyid");
int partyid = Integer.parseInt(id);
String firstName = request.getParameter("firstname");
String lastName = request.getParameter("lastname");
String address = request.getParameter("address");
String city = request.getParameter("city");
String zip = request.getParameter("zip");
String state = request.getParameter("state");
String country = request.getParameter("country");
String phone = request.getParameter("phone");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerreg","root","Chiranjiv@123");
String sql="Update party set firstname=?,lastname=?,address=?,city=?,zip=?,state=?,country=?,phone=? where partyid="+partyid;
ps = con.prepareStatement(sql);
ps.setString(1, firstName);
ps.setString(2, lastName);
ps.setString(3, address);
ps.setString(4, city);
ps.setString(5, zip);
ps.setString(6, state);
ps.setString(7, country);
ps.setString(8, phone);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>