<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>
<title>${page.title}</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" href="/assignment/views/nicepage.css"
	media="screen">
<link rel="stylesheet" href="/assignment/views/home.css" media="screen">
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 4.3.3, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

</head>

<body>

	<main class="container">
		<header class="row pt-5 pb-3">
			<!-- style="background-color: antiquewhite;" -->
			<div class="col-8">
				<h1 style="padding-left: 30px;">Online Entertainment</h1>
			</div>
			<div class="col-3">
				<img src="https://fpt.edu.vn/Content/images/assets/Poly.png"
					style="width: 100%; padding-left: -30px;" alt="">
			</div>


		</header>
		<hr>



		<nav class="row"
			style="font-size: 23px; font-weight: bold; cursor: pointer;">

			<div class="u-custom-menu u-nav-container">
				<ul class="u-nav u-spacing-30 u-unstyled u-nav-1">
					<li class="u-nav-item"><a
						class="u-border-4 u-border-active-grey-75 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90"
						href="/assignment/UsersHomeServlet" style="padding: 2px 42px;">Home</a></li>
					
					
					<li class="u-nav-item"><a
						class="u-border-4 u-border-active-grey-75 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90"
						href="/assignment/views/index_user.jsp" style="padding: 2px 42px;">My
							Favorites</a></li>
					<li class="u-nav-item"><a
						class="u-border-4 u-border-active-grey-75 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90"
						href="#" style="padding: 2px 40px 2px 42px;">My Account</a>
						<div class="u-nav-popup">


							<ul
								class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2">

								<c:choose>
									<c:when test="${empty sessionScope.user}">

										<li class="u-nav-item"><a
											class="u-button-style u-nav-link u-white"
											href="/assignment/LoginServlet">Login</a></li>
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link u-white"
											href="/assignment/RegisServlet">Registration</a></li>
									</c:when>
									<c:otherwise>

										<li class="u-nav-item"><a
											class="u-button-style u-nav-link u-white"
											href="/assignment/views/login/chancePass.jsp">Chance
												Password</a></li>
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link u-white"
											href="/assignment/EditProfileServlet">Edit Profile</a></li>
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link u-white"
											href="/assignment/LogoffServlet">Logoff</a></li>

										<c:if test="${sessionScope.user.admin}">

											<li class="u-nav-item"><a
												class="u-button-style u-nav-link u-white"
												href="/assignment/UsersManagementServlet">Admin</a></li>
										</c:if>
									</c:otherwise>
								</c:choose>



							</ul>
						</div></li>
				</ul>
			</div>
		</nav>
		<hr>
		<div>

			<jsp:include page="${page.contenUrl}"></jsp:include>


		</div>
		<br> <br>
		<!-- trang next duoi  -->


	</main>
	

	<c:if test="${not empty page.scripUrl}">
		<jsp:include page="${page.scripUrl}"></jsp:include>
	</c:if>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>

</html>