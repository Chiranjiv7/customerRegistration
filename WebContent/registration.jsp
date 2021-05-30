<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method = "post" action ="RegistrationServlet">
		<div class="container">
			<h1>Register Here</h1>
			<p>Please fill in the details to create an account with us.</p>
			<hr>
			<label for="First Name"><b>Enter First Name</b></label>
			<p><input type="text" placeholder="Enter First Name" name="firstname" required>*</p>
			<label for="Last Name"><b>Enter Last Name</b></label>
			<p><input type="text" placeholder="Enter Last Name" name="lastname" required>*</p>
			<label for="Address"><b>Enter Address</b></label>
			<p><input type="text" placeholder="Enter Address" name="address"></p>
			<label for="City"><b>Enter City</b></label>
			<p><input type="text" placeholder="Enter City" name="city"></p>
			<label for="State"><b>Enter State</b></label>
			<p><input type="text" placeholder="Enter State" name="state"></p>
			<label for="Country"><b>Enter Country</b></label>
			<p><input type="text" placeholder="Enter Country" name="country"></p>
			<label for="zip"><b>Enter Zip</b></label>
			<p><input type="text" placeholder="Enter Zip" name="zip"></p>
			<label for="Phone"><b>Enter Phone</b></label>
			<p><input type="text" placeholder="Enter Phone" name="phone"></p>
			<label for="UserLogin ID"><b>Enter UserLogin ID</b></label>
			<p><input type="text" placeholder="Enter UserLogin ID" name="userloginid" required>*</p>
			<label for="password"><b>Password</b></label>
			<p><input type="password" placeholder="Enter Password" name="password" required>*</p>

			<hr>
			<button type="submit" class="registerbtn"><strong>Register</strong></button>
		</div>
	</form>


	
</body>
</html>