<div class="header">
	<div class="container">
		<!-- Logo -->
		<a class="logo" href="volunteer.do">
			<img src="assets/img/logo1-default.png" alt="Logo"">
		</a>
		<!-- End Logo -->

		<!-- Toggle get grouped for better mobile display -->
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="fa fa-bars"></span>
		</button>
		<!-- End Toggle -->
	</div><!--/end container-->

	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
		<div class="container">
			<ul class="nav navbar-nav">
				<!-- Home -->
				<li class="dropdown active">
					<a href="<%=request.getContextPath()%>/volunteer.do">
						Home
					</a>
				</li>
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/search.jsp">
						Search
					</a>
				</li>
				<!-- End Home -->
				<!-- Pages -->
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/aboutIIV.jsp">
						About IIV
					</a>
				</li>
			</ul>
		</div><!--/end container-->
	</div><!--/navbar-collapse-->
</div>
