<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="model.domain.VolunteerBean" %> 
<%
	VolunteerBean volunteer = (VolunteerBean)request.getAttribute("volunteer");
 %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>IIV_Country_Info</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Web Fonts -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="assets/css/headers/header-default.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="assets/plugins/animate.css">
	<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
	<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="assets/css/theme-skins/dark.css">

</head>

<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="index.html">
					<img src="assets/img/logo1-default.png" alt="Logo" style="height: 40px;">
				</a>
				<!-- End Logo -->

				<!-- Topbar -->
				<div class="topbar">
					<ul class="loginbar pull-right">
						<li class="hoverSelector">
							<i class="fa fa-globe"></i>
							<a>Languages</a>
							<ul class="languages hoverSelectorBlock">
								<li class="active">
									<a href="#">English <i class="fa fa-check"></i></a>
								</li>
							</ul>
						</li>
						<li class="topbar-devider"></li>
						<li><a href="page_faq.html">Help</a></li>
						<li class="topbar-devider"></li>
						<li><a href="page_login.html">Login</a></li>
					</ul>
				</div>
				<!-- End Topbar -->

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
						<li>
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								Home
							</a>
						</li>
						<li>
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								About
							</a>
						</li>
					</ul>
				</div><!--/end container-->
			</div><!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->
		
		<!--=== Interactive Slider ===-->
		<div class="breadcrumbs-v3 breadcrumbs-lg img-v2" style="background:url(<%=volunteer.getLink()%>);"></div>
			<div class="container">
				<h1><%= volunteer.getFirstname() %></h1>
				<p><span><%= volunteer.getTeam() %></span>,
					<span><%= volunteer.getRole() %></span></p>
			</div>
		</div>
		<!--=== End Interactive Slider ===-->

		<!--=== Container Part ===-->
		<div class="container content-sm">
			<div class="row">
				<!-- Social Network -->
				<div class="col-md-6 md-margin-bottom-50">
					<div class="headline-left margin-bottom-30">
						<h2 class="headline-brd heading-md">IIV <span class="color-green">MEMBER</span></h2>
					</div>
					<p><h4 class="heading-xs">Gender<span class="pull-right"><%= volunteer.getGender() %></span></h4></p>
					<p><h4 class="heading-xs">Year of Service<span class="pull-right"><%= volunteer.getYear() %></span></h4></p>
					<p><h4 class="heading-xs">Country<span class="pull-right"><%= volunteer.getCountry() %></span></h4></p>
					<p><h4 class="heading-xs">Host Organization<span class="pull-right"><%= volunteer.getOrg() %></span></h4></p>
					<br>
				</div>
				<!-- End Social Network -->

				<!-- Social Network2 -->
				<div class="col-md-6 md-margin-bottom-50">
					<div class="headline-left margin-bottom-30">
						<h2 class="headline-brd heading-md">PERSONAL <span class="color-green">INFORMATION</span></h2>
					</div>
					<p><h4 class="heading-xs">Date of Birth<span class="pull-right"><%= volunteer.getBirth() %></span></h4></p>
					<p><h4 class="heading-xs">University<span class="pull-right"><%= volunteer.getUniversity() %></span></h4></p>
					<p><h4 class="heading-xs">Major<span class="pull-right"><%= volunteer.getMajor() %></span></h4></p>
					<br>
				</div>
				<!-- End Social Network2 -->

				<!-- Progress Bar -->
				<div class="col-md-6 progress-box md-margin-bottom-50">
					<div class="headline-left margin-bottom-30">
						<h2 class="headline-brd heading-md">MY <span class="color-green">SKILLS</span></h2>
					</div>
					<h4 class="heading-xs"><%= volunteer.getExpertise() %><br><%= volunteer.getExperience() %><span class="pull-right"></span></h4>
				</div>
			</div>
				<!-- End Progress Bar -->
		</div><!--/end row-->
		<!--=== End Container Part ===-->

		<!--=== Call To Action v2 ===-->
		<div class="call-action-v2 parallaxBg">
			<div class="container">
				<h2>CONTACT ME!</h2>
				<p>This is my e-mail address :)</p>
				<a href="mailto:<%=volunteer.getEmail()%>" class="btn-u">Get In Touch</a>
			</div>
		</div>
		<!--=== End Call To Action v2 ===-->
		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>2016 &copy; All Rights Reserved.</p>
						</div>
					</div>
				</div>
			</div><!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->
	</div><!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="assets/plugins/js/back-to-top.js"></script>
	<script type="text/javascript" src="assets/plugins/js/smoothScroll.js"></script>
	<script type="text/javascript" src="assets/plugins/js/jquery-appear.js"></script>
	<script type="text/javascript" src="assets/plugins/js/jquery.parallax.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery/jquery.cubeportfolio.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="assets/plugins/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/plugins/js/app.js"></script>
	<script type="text/javascript" src="assets/plugins/js/cube-portfolio-lightbox.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			App.initParallaxBg();
			StyleSwitcher.initStyleSwitcher();
			ProgressBar.initProgressBarHorizontal();
		});
	</script>
</body>
</html>

