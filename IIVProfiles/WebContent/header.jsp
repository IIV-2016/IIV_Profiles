<div class="header-v6 header-classic-white header-sticky">
	<!-- Navbar -->
	<div class="navbar mega-menu" role="navigation">
		<div class="container">
			<div class="menu-container">
				<!-- Navbar Brand -->
				<div class="navbar-brand">
					<a href="volunteer.do"> <img class="shrink-logo"
						src="assets/img/logo1-default.png" alt="Logo">
					</a>
				</div>
				<!-- ENd Navbar Brand -->

				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> <span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
			</div>
		</div>
		<div class="collapse navbar-collapse navbar-responsive-collapse">
			<div class="menu-container">
				<ul class="nav navbar-nav">
					<!-- Home -->
					<li class="dropdown"><a
						href="<%=request.getContextPath()%>/volunteer.do"> Home </a> <!-- Home -->
					<li class="dropdown"><a
						href="<%=request.getContextPath()%>/volunteer.do?command=searchPage">
							Search </a> <!-- End Home --> <!-- Home -->
					<li class="dropdown"><a
						href="<%=request.getContextPath()%>/volunteer.do?command=aboutIIV">
							About IIV </a> <!-- End Home -->
				</ul>
			</div>
		</div>
		<!--/navbar-collapse-->
	</div>
</div>
