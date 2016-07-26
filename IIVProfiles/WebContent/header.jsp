<div class="header">
	<div class="container">
		<a class="logo" href="volunteer.do"> <img src="assets/img/logo1-default.png" alt="Logo""></a>
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="fa fa-bars"></span>
		</button>
	</div>
	<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
		<div class="container">
			<ul class="nav navbar-nav">
				<!-- Home -->
				<li class="dropdown active">
					<a href="<%=request.getContextPath()%>/volunteer.do"> Home </a>
				</li>
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/volunteer.do?command=searchPage"> Search </a>
				</li>
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/volunteer.do?aboutIIV.jsp"> About IIV </a>
				</li>
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/volunteer.do?aboutDeveloper.jsp"> About Developer </a>
				</li>
			</ul>
		</div>
	</div>
</div>
