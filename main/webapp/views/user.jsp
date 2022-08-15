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

<title>lab5</title>
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
					<h3>enctype="multipart/form-data" la gi</h3>
				</div>

			</div>
		</header>
		<section class="row">
			<div class="col-4">
				<div class="row">
					<div class="col">

						<form action="/UserServlet" method="post">

							<div class="form-group">
								<label for="userId">User ID:</label> <input type="text"
									id="userId" name="userId" class="form-control" value="${userEdit.userId}" />
							</div>

							<div class="form-group">
								<label for="password">PassWord:</label> <input type="password"
									id="password" name="password" class="form-control"  />
							</div>

							<div class="form-group">
								<label for="fullname">Full Name:</label> <input type="text"
									id="fullname" name="fullname" class="form-control"  value="${userEdit.fullname}" />
							</div>

							<div class="form-group">
								<label for="email">Email Address:</label> <input type="text"
									id="email" name="email" class="form-control"  value="${userEdit.email}" />
							</div>
							<div class="form-group">
								<lable>Role:</lable>
								<div class="form-check form-check-inline">

									<input type="radio" class="form-check-input" id="admin"
										name="admin" value="false" ${!userEdit.admin? 'checked' : ''} /> <label class='ml-2'>Admin</label>
								</div>

								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" id="user"
										name="admin" value="true" ${userEdit.admin? 'checked' : ''} /> <label class='ml-2'>User</label>
								</div>
							</div>
							<hr />
							<button class="btn btn-primary" formaction="/Lab5_MetQua/UserServlet/create">Create</button>
							<button class="btn btn-warning" formaction="/Lab5_MetQua/UserServlet/update">Update</button>
							<button class="btn btn-danger" formaction="/Lab5_MetQua/UserServlet/delete">Delete</button>
							<button class="btn btn-info" formaction="/Lab5_MetQua/UserServlet/rest">Rest</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-8">
				<div class="u-expanded-width u-table u-table-responsive u-table-1">
					<table class="table table-stripe">

						<thead class="u-palette-4-base u-table-header u-table-header-1">
							<tr style="height: 21px;">
								<th>User ID</th>
								<th>Full Name</th>
								<th>Password</th>
								<th>Email</th>
								<th>Role</th>
								<th>&nbsp; rong</th>
							</tr>
						</thead>
						<tbody class="u-table-body">
						
							<c:forEach var="user" items="${users}">
								<tr>
									<td>${user.userId }</td>
									<td>${user.fullname }</td>
									<td>${user.password}</td>
									<td>${user.email }</td>
									<td>${user.admin?'User':'Admin'}</td>
									<td><a href="/Lab5_MetQua/UserServlet/edit/${user.userId}">Edit</a></td>
									<!-- 
									<td><a href="/lab5/user/edit/${user.userId}">Edit</a></td>
									 --> 
								
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