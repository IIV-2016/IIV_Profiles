<div class="header menuWrap">
	<div class="container">
		<a class="logo" href="volunteer.do"> <img src="assets/img/logo1-default.png" alt="Logo""></a>
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="fa fa-bars"></span>
		</button>
		<div class="topbar">
			<ul class="loginbar pull-right">
				<li><i class="fa fa-user"></i> <a href="<%=request.getContextPath()%>/login.jsp" class="margin-right-10"> Login </a></li>
			</ul>
		</div>		
	</div>
	<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
		<div class="container">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/volunteer.do"> Home </a>
				</li>
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/aboutIIV.jsp"> About IIV </a>
				</li>
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/aboutDeveloper.jsp"> About Developer </a>
				</li>
			</ul>
		</div>
	</div>
</div>