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
	<title>Thailand | Total 4 teams work</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="assets/css/headers/header-default.css">
	<link rel="stylesheet" href="assets/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="assets/plugins/animate.css">
	<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="assets/css/pages/portfolio-v1.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="assets/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="assets/css/custom.css">
</head>
<body>
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
		<br>
      <!--=== Interactive Slider ===--> 
      <div class="col-md-6">
               <div class="carousel slide carousel-v1" id="myCarousel">
                  <div class="carousel-inner">
                     <div class="item active">
                        <img alt="<%=volunteer.getFirstname()%> <%=volunteer.getLastname()%>" src="<%=volunteer.getLink()%>"> 
                     </div> 
                  </div>

                  <div class="carousel-arrow">
                     <a data-slide="prev" href="#myCarousel" class="left carousel-control">
                        <i class="fa fa-angle-left"></i>
                     </a>
                     <a data-slide="next" href="#myCarousel" class="right carousel-control">
                        <i class="fa fa-angle-right"></i>
                     </a>
                  </div>
                        
                  <div class="container">
                     <h1><%= volunteer.getFirstname() %></h1>
                     <p><span><%= volunteer.getTeam() %></span>,
                        <span><%= volunteer.getRole() %></span></p>
                  </div>
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

				<% if (volunteer.getExpertise().equals("") && volunteer.getExpertise().equals("")) { }else{%>					
				<!-- My Skill Menu -->
					<div class="col-md-6 progress-box md-margin-bottom-50">
						<div class="headline-left margin-bottom-30">
							<h2 class="headline-brd heading-md">MY <span class="color-green">SKILLS</span></h2>
						</div>
						<h4 class="heading-xs"><%= volunteer.getExpertise() %><br><%= volunteer.getExperience() %><span class="pull-right"></span></h4>
					</div>
				<% } %>
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
			<br>
		</div>
		
		<!--=== End Content Part ===-->
		
		<br>
		
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
	<script type="text/javascript" src="assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript" src="assets/js/plugins/owl-recent-works.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			StyleSwitcher.initStyleSwitcher();
			OwlRecentWorks.initOwlRecentWorksV1();
		});
	</script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->
</body>
</html>
