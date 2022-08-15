<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Find In Range</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<form action="/assignment/sreach/findInRange" method="get"
		class="container">
		<section class="row">
			<div class="col-4">
				<h2>Find In Range</h2>
				<p>${dayFrom}
				<h2>To</h2>
				${dayTo}
				</p>
				<div class="form-group">
					<label for="password">Ngày bắt đầu</label> <input
						class="form-control" id="myInput" type="date" name="from">
					<label for="password">Ngày kết thúc</label> <input
						class="form-control" id="myInput" type="date" name="to">
				</div>
				<br>

				<button class="btn btn-primary"
					formaction="/Lab6_Ps15056/sreach/findInRange">Search</button>
			</div>
			
			<hr>
			<br>
			<!-- Báº£ng -->
			<c:if test="${not empty videos }">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Title</th>
							<th>Views</th>
							<th>Active</th>

						</tr>
					</thead>
					<tbody id="myTable">
						<c:forEach var="item" items="${videos }">
							<tr>
								<td>${item.videoID }</td>
								<td>${item.title}</td>
								<td>${item.views }</td>

								<td>${item.active?'yes':'no'}</td>

							</tr>

						</c:forEach>
					</tbody>
				</table>
			</c:if>


		</section>
	</form>

	<!--  <script>
		$(document)
				.ready(
						function() {
							$("#myInput")
									.on(
											"keyup",
											function() {
												var value = $(this).val()
														.toLowerCase();
												$("#myTable tr")
														.filter(
																function() {
																	$(this)
																			.toggle(
																					$(
																							this)
																							.text()
																							.toLowerCase()
																							.indexOf(
																									value) > -1)
																});
											});
						});
	</script>
-->
</body>
</html>
