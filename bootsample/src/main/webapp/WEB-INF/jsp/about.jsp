<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="https://apex.oracle.com/pls/apex/fw_consulting/r/1373/files/static/v21/favicon.ico">

<title>Home</title>

<!-- Bootstrap core CSS -->
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<link href="/static/css/style.css" rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">





<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
thead {
	background: rgb(51, 122, 183);
	color: rgb(255, 255, 255);
	text-align: center;
}

th {
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container">
				<div class="page-header">
					<h1>Sticky footer with fixed navbare</h1>
				</div>
				<p class="lead">
					Pin a fixed-height footer to the bottom of the viewport in desktop
					browsers with this custom HTML and CSS. A fixed navbar has been
					added with
					<code>padding-top: 60px;</code>
					on the
					<code>body &gt; .container</code>
					.
				</p>
				<p>
					Back to <a href="../sticky-footer">the default sticky footer</a>
					minus the navbar.
				</p>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_TASKS'}">
			<div class="container text-center" id="tasksDIV">
				<h3>My Tasks</h3>
				<hr>
				<div class="table-responsive">
					<table id="users" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date Created</th>
								<th>Finished</th>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="task" items="${tasks}">
								<tr>
									<td>${task.id}</td>
									<td>${task.name}</td>
									<td>${task.description}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
											value="${task.dateCreated}" /></td>
									<td>${task.finished}</td>
									<td><a href="delete-task?id=${task.id}"> <span
											class="glyphicon glyphicon-trash"></span>
									</a></td>
									<td><a href="update-task?id=${task.id}"> <span
											class="glyphicon glyphicon-edit"></span>
									</a></td>
									<td><a href="show-task?id=${task.id}"> <span
											class="glyphicon glyphicon-eye-open"></span>
									</a></td>
								</tr>

							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>


		</c:when>

		<c:when test="${mode=='MODE_NEW' || mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Task</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-task">
					<input type="hidden" name="id" value="${task.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-5">
							<input type="text" class="form-control" name="name"
								value="${task.name}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-5">
							<input type="text" class="form-control" name="description"
								value="${task.description}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Finished</label>
						<div class="col-md-7">
							<input type="radio" class="col-sm-1" name="finished" value="true" />
							<div class="col-sm-1">Yes</div>
							<input type="radio" class="col-sm-1" name="finished"
								value="false" checked />
							<div class="col-sm-1">No</div>
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"></input>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</div>
				</form>
			</div>




		</c:when>





		<c:when test="${mode=='MODE_NEWE' || mode=='MODE_UPDATE'}">
			<div class="container">
				<div class="row">
					<h3>Developer Question</h3>
					<p>Can anyone tell me why this snippet flashes after the
						tooltip is removed from the DOM? It is driving me crazy!</p>
					<hr />

				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-12 margin-tb">
						<div class="pull-left">
							<h2>Show Item</h2>
						</div>
						<div class="pull-right">
							<a class="btn btn-primary" href="all-tasks"> Back</a>
						</div>
					</div>
				</div>

				<div class="row">

					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<strong>name:</strong> ${task.name}
						</div>
					</div>

					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<strong>Typ:</strong> ${task.name}
						</div>
					</div>


					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<strong>Preis:</strong> ${task.name}
						</div>
					</div>

					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<strong>categorie:</strong> ${task.name}
						</div>
					</div>

					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<strong>Lieferant:</strong> ${task.name}
						</div>
					</div>

					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<strong>Minimalwert:</strong> ${task.name}
						</div>
					</div>

					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<strong>beschreibung:</strong> ${task.name}
						</div>
					</div>
				</div>

			</div>






		</c:when>






	</c:choose>








	<%@ include file="footer.jsp"%>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="/static/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

