<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<title>Edit Users</title>
</head>
<body>
	<main class="container">
		<header class="row">
			<div class="row">
				<div class="dangKy">
					<c:if test="${not empty message}">
						<div class="alert alert-success">${message}</div>
					</c:if>
					<c:if test="${not empty error}">
						<div class="alert alert-success">${error}</div>
					</c:if>
					
				</div>

			</div>
		</header>
		<section class="row">
			
			<div class="col-8">
				<div class="u-expanded-width u-table u-table-responsive u-table-1">
					<table class="table table-stripe">

						<thead class="u-palette-4-base u-table-header u-table-header-1">
							<tr style="height: 21px;">
								<th>Video ID</th>
								<th>Title</th>
								<th>Poster</th>
								<th>Views</th>
								<th>Active</th>
								<th>&nbsp; rong</th>
							</tr>
						</thead>
						<tbody class="u-table-body">
						
							<c:forEach var="video" items="${videoList}">
								<tr>
									<td>${video.videoID}</td>
									<td>${video.title }</td>
									<td>${video.poster}</td>
									<td>${video.views}</td>
									<td>${video.active?'active':'inactive'}</td>
									<td><a href="/assignment/Admin/VideosManagement/edit/${video.videoID}">Edit</a></td>									
								
								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</section>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
</body>
</html>