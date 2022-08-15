<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Find In Month</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

	<form action="/Lab6_Ps15056/sreach/findInMonth" method="get"
		class="container">
		<h2>Find In Range</h2>
		<p>Tháng ${message }</p>
		<% for (int i = 1; i < 13; i++){ %>
			<input type="checkbox" id="<%=i %>" name="month" value="<%=i %>">
			<label for="<%=i %>"><%=i %></label>
		<%}%>
		<br>
		<button class="btn btn-primary"
			formaction="/assignment/sreach/findInMonth">Search</button>

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
