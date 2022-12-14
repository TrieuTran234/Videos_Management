<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Register</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="/assignment/views/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="/assignment/views/css/style.css">
</head>

<div class="signup-content">



	<div class="signup-form">
		<h2 class="form-title">Register</h2>
		<form method="POST" class="register-form" id="register-form">
			<div class="form-group">
				<label for="name"><i
					class="zmdi zmdi-account material-icons-name"></i></label> <input
					type="text" name="name" id="name" value="${user.userName}" placeholder="Your Name" />
			</div>
			
			<div class="form-group">
				<label for="fullname"><i
					class="zmdi zmdi-account material-icons-name"></i></label> <input
					type="text" name="fullname" id="fullname" value="${user.fullname}" placeholder="Full Name" />
			</div>
			
			<div class="form-group">
				<label for="email"><i class="zmdi zmdi-email"></i></label> <input
					type="email" name="email" id="email" value="${user.email}" placeholder="Your Email" />
			</div>
			<div class="form-group">
				<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
					type="password" name="pass" id="pass"  value="${user.password}" placeholder="Password" />
			</div>
			<div class="form-group">
				<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
				<input type="password" name="re_pass" id="re_pass" "
					placeholder="Repeat your password" />
			</div>
			<div class="form-group">
				<input type="checkbox" name="agree-term" id="agree-term"
					class="agree-term" /> <label for="agree-term"
					class="label-agree-term"><span><span></span></span>I agree
					all statements in <a href="#" class="term-service">Terms of
						service</a></label>
			</div>
			<div class="row">
				<c:if test="${not empty messageRegist}">
					<div class="alert alert-success">${messageRegist}</div>
				</c:if>
			</div>
			<div class="form-group form-button">
				<input type="submit" name="signup" id="signup" class="form-submit"
					value="Register"  />
			</div>
		</form>
	</div>
	<div class="signup-image">
		<figure>
			<img src="/assignment/views/images/signup-image.jpg"
				alt="sing up image">
		</figure>
		<a href="/assignment/LoginServlet" class="signup-image-link">I
			am already member</a>
	</div>



	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	</body>
	<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>