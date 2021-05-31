<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align = "center">
<form name="regForm" method = "post" action = "LoginServlet">
<table>
	<tr> <td>UserLoginId: </td><td><input type="text" name="userloginid" required>*</td></tr>
	<tr> <td>Password: </td><td><input type="password" name="password" required>*</td></tr>
	<tr> <td></td><td><input type="submit" class="login" value="Login" onclick="validation()" formtarget="_blank"></td></tr>
</table>
</form>
<div class="container">
	    <p>Don't have an account? <a href="registration.jsp" target="_blank">Sign Up</a>.</p>
</div>
</div>
</body>
</html>