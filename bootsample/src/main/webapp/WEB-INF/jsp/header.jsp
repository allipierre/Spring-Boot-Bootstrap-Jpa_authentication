<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/"><img
				src="http://res.cloudinary.com/candidbusiness/image/upload/v1455406304/dispute-bills-chicago.png"
				alt="Logo Image"> </a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active st"><a href="/">Home<!--<?php $user = Auth::user();   echo "$user[name]";?>--></a></li>
				<li class="st"><a href="/about">About</a></li>
				<li class="st"><a href="all-tasks">Contact</a></li>
				<li class="teste"><a href="new-task">CRUD</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle st"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="datatable">Action</a></li>
						<li><a href="student">Another action</a></li>
						<li><a href="usersv">All users</a></li>
						<li role="separator" class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="insertproduct">Insert Products</a></li>
						<li><a href="rest">Rest Services</a></li>
					</ul></li>

				
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false"> <span
							class="glyphicon glyphicon-user">&nbsp;</span>${pageContext.request.userPrincipal.name}<span
							class="caret"></span>
						
					</a>
					

						<ul class="dropdown-menu" role="menu">
							<li><a onclick="document.forms['logoutForm'].submit()">Logout</a>


							</li>
						</ul></li>
						<c:if test="${pageContext.request.userPrincipal.name != null}">
					<form id="logoutForm" method="POST" action="${contextPath}/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</c:if>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>
