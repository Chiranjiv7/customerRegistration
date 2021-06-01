<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("partyid");
int partyid = Integer.parseInt(id);
String driver = "com.mysql.jdbc.Driver";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
Statement st = null;
ResultSet rs = null;
%>
<%
try{
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerreg","root","Chiranjiv@123");
st=con.createStatement();
String sql ="select * from party where partyid="+partyid;
rs = st.executeQuery(sql);
while(rs.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="updateprocess.jsp">

<input type="hidden" name="partyid" value="<%=rs.getInt("partyid") %>">
<br>
First name:<br>
<input type="text" name="firstname" value="<%=rs.getString("firstname") %>">
<br>
Last name:<br>
<input type="text" name="lastname" value="<%=rs.getString("lastname") %>">
<br>
Address:<br>
<input type="text" name="address" value="<%=rs.getString("address") %>">
<br>
City :<br>
<input type="text" name="cityname" value="<%=rs.getString("city") %>">
<br>
State:<br>
<input type="text" name="state" value="<%=rs.getString("state") %>">
<br>
Country:<br>
<input type="text" name="country" value="<%=rs.getString("country") %>">
<br>
Zip:<br>
<input type="text" name="zip" value="<%=rs.getString("zip") %>">
<br>
Phone:<br>
<input type="text" name="phone" value="<%=rs.getString("phone") %>">
<br>

<input type="submit" value="submit">
</form>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>