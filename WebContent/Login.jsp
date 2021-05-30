<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="regForm" method = "post" action = "login">
		<p><label>UserLoginId: <input type="text" id="UserLogin ID" required>*</label></p>
		<p><label>Password: <input type="password" id="pwd" required>*</label></p>
		<input type="submit" class="login" value="Log In" onclick="validation()" formtarget="_blank">
		<div class="container">
			<p>Don't have an account? <a href="registration.jsp" target="_blank">Sign Up</a>.</p>
		</div>
	</form>
</body>
</html>