<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css files -->
<link href="./css/login.css" rel="stylesheet" type="text/css" media="all" />
<!-- css files -->
</head>
<body>
	<!-- main -->
	<div class="main">
		<div class="main-w3l">
			<h1 class="logo-w3">Student Management</h1>
			<div class="w3layouts-main">
				<h2><span>Login now</span></h2>
				<div class="social">
					<a href="#">Login With Facebook</a>
				</div>
					<h3>(or)</h3>
					<h3 style="color: red;"> ${mess} </h3>
					<form action="index" method="post">
						<input placeholder="Username or Email" name="Email" type="email" required="">
						<input placeholder="Password" name="Password" type="password" required="">
						<input type="submit" value="Login" name="login">
					</form>
					<h6><a href="#">Don't have an account</a>? <a href="./sinup">Create an account?</a></h6>
			</div>
			<!-- //main -->
			
			<!--footer-->
			<div class="footer-w3l">
			</div>
			<!--//footer-->
		</div>
	</div>

</body>
</html>