<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="model.domain.VolunteerBean" %> 
<%
	VolunteerBean [] list = (VolunteerBean[])request.getAttribute("list");
 %>
 <!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>Jobs | Unify - Responsive Website Template</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="assets/css/headers/header-default.css">
	<link rel="stylesheet" href="assets/css/footers/footer-v3.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="assets/plugins/animate.css">
	<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/plugins/image-hover/css/img-hover.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="assets/css/pages/page_job.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="assets/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="assets/css/custom.css">
</head>

<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header ===-->
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
		<!--=== End Header ===-->

		<!--=== Job Img ===-->
		<div class="job-img margin-bottom-30">
			<div class="title-box-v2">
				<h2>IIV Profiles <span class="color-green">Search</span></h2>
			</div>
			<form name="search" method="get" action="<%=request.getContextPath()%>/volunteer.do">
			<input type="hidden" name="command" value="search">
			<div class="job-img-inputs">
				<div class="container">
					<div class="row">
						<div class="col-sm-4 md-margin-bottom-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-tag"></i></span>
								<input type="text" name="role" placeholder="what role you are looking for" class="form-control">
							</div>
						</div>
						<div class="col-sm-4">
							<input type=submit class="btn-u btn-block btn-u-dark" value="Search Volunteer"> 
						</div>
					</div>
				</div>
			</div>
			 </form>
		</div>
		<!--=== End Job Img ===-->

		<!--=== Content Part ===-->
		<div class="container content">
			<div class="headline margin-bottom-35"><h2>Search Results</h2></div>

			<!-- Easy Blocks v1 -->
			<div class="row high-rated margin-bottom-20">
				<!-- Easy Block -->
							<%
				if(list == null || list.length == 0){
				%>
				<p>empty</p>
				<%
				}else{
					VolunteerBean volunteer = null;
					for(int i = 0; i <list.length ; i++){
						volunteer = list[i];
				%>
				<div class="col-md-3 col-sm-6 md-margin-bottom-40">
					<div class="easy-block-v1">
						<div class="easy-block-v1-badge rgba-default"><%=volunteer.getRole() %></div>
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">
									<img alt="<%=volunteer.getFirstname() %><%=volunteer.getLastname() %>" src="<%=volunteer.getLink() %>">
								</div>
							</div>
						</div>
						<div class="overflow-h">
							<h3><%=volunteer.getFirstname() %> <%=volunteer.getLastname() %></h3>
							<div class="star-vote pull-right">
								<ul class="list-inline">
									<li><i class="color-green fa fa-star"></i></li>
								</ul>
							</div>
						</div>
						<ul class="list-unstyled">
							<li><span class="color-green">Country:</span> <%=volunteer.getCountry() %></li>
							<li><span class="color-green">Major:</span> <%=volunteer.getMajor() %></li>
						</ul>
						<a class="btn-u btn-u-sm" href="<%=request.getContextPath()%>/volunteer.do?command=member&memberNum=<%=volunteer.getMemberNum()%>">View More</a>				
					</div>
				</div>
				<%
					}
				}
				%>
				<!-- End Easy Block -->
		</div>
		<!--=== End Content Part ===-->

		<div class="footer-v1">
			<div class="footer">
				<div class="copyright">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<p>
									<a href="#">Made by 2016 IIV Long-term Volunteers</a>
								</p>
							</div>
						</div>
					</div>
				</div><!--/copyright-->
			</div>
		</div>
		<!--=== End Footer Version 1 ===-->
		
	</div><!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/plugins/cube-portfolio/cube-portfolio-2.js"></script>
	<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->
</body>
</html>
