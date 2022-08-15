<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>


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
	<!-- main class container style="background-color: yellowgreen;" -->
	<main class="container">

		<div>
			<c:if test="${not empty LoginNao}">
				<div class="alert alert-success">${LoginNao}</div>
			</c:if>
		</div>
		<form method="post">
			<div style="position: relative; right: 14px;">
				<section class="u-clearfix u-section-2" id="sec-1774">
					<div class="u-clearfix u-sheet u-sheet-1">
						<div class="u-expanded-width u-list u-list-1">
							<div class="u-repeater u-repeater-1">

								<c:forEach var="video" items="${videoHome}">

									<div
										class="u-border-1 u-border-grey-75 u-container-style u-list-item u-repeater-item">
										<div
											class="u-container-layout u-similar-container u-container-layout-1">
											<div
												class="u-expanded-width u-video u-video-contain u-video-1">
												<div class="embed-responsive embed-responsive-1">
													<iframe
														style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
														class="embed-responsive-item" src="${video.description }"
														frameborder="0" allowfullscreen=""></iframe>
												</div>
											</div>
											<p class="u-text u-text-1">
												Tiêu đề: <a href="#"> ${video.title}</a>
											</p>
											<a href="#"
												class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-palette-1-base u-btn-1"><span
												class="u-file-icon u-icon"><img
													src="images/3925158.png" alt=""></span>&nbsp;Share<br>
											</a>
											<button formaction="/assignment/LikeVideoServlet/like/${video.videoID}"
												class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-palette-1-base u-btn-2">&nbsp;${video.views}
												Like</button>

											<div
												class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1">
											</div>
											<p class="u-text u-text-2">Mô tả: Video ID:  ${video.videoID} </p>
											<p class="u-text u-text-2"> ${video.description}</p>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>
					</div>
				</section>
				<div>


					<nav aria-label="Page navigation example"
						style="position: relative; left: 400px; top: -30px;">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>
				</div>


			</div>
		</form>
		<br> <br>
		<!-- trang next duoi  -->


	</main>


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



























