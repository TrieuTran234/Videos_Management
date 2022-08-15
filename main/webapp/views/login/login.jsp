<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- Font Icon -->
<link rel="stylesheet"
	href="/assignment/views/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->

<link rel="stylesheet" href="/assignment/views/css/style.css">

</head>

<div class="signin-content">
	<div class="signin-image">
		<figure>
			<img src="/assignment/views/images/signin-image.jpg"
				alt="sing up image">
		</figure>
		<a href="/assignment/RegisServlet" class="signup-image-link">Create
			an account</a>
	</div>






	<div class="signin-form">
		<h2 class="form-title">Sign up</h2>

		<form method="POST" class="register-form" id="login-form">
			<div class="form-group">
				<label for="your_name"><i
					class="zmdi zmdi-account material-icons-name"></i></label> <input
					type="text" name="username" value="${userName}" placeholder="Your Name" />
			</div>
			<div class="form-group">
				<label for="your_pass"><i class="zmdi zmdi-lock"></i></label> <input
					type="password" name="password" placeholder="Password" />
			</div>

			<div class="form-group">
				<input type="checkbox" name="remember-me" id="remember-me"
					class="agree-term" /> <label for="remember-me"
					class="label-agree-term"><span><span></span></span>Remember
					me</label>
				<!-- quen mat khau -->
				<a href="#" style="padding-left: 10px;">Forgot Password</a>
			</div>
			<div class="form-group form-button">
				<input type="submit" name="signin" id="signin" class="form-submit"
					value="Log in" />
			</div>
			<div>
				<c:if test="${not empty messageLogin}">
					<div class="alert alert-success">${messageLogin}</div>
				</c:if>
			</div>
		</form>
		<div class="social-login">
			<span class="social-label">Or login
				with</span>
			<ul class="socials">
				<li><a href="#"><i
						class="display-flex-center zmdi zmdi-facebook"></i></a></li>
				<li><a href="#"><i
						class="display-flex-center zmdi zmdi-twitter"></i></a></li>
				<li><a href="#"><i
						class="display-flex-center zmdi zmdi-google"></i></a></li>
			</ul>
		</div>
	</div>
</div>


<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>