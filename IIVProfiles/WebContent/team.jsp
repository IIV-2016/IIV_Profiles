<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="model.domain.VolunteerBean" %>
<%@ page import="model.domain.TeamBean" %>
<%
	TeamBean[] teamList = (TeamBean[])request.getAttribute("teamList");
	String country = (String)request.getAttribute("country");
	TeamBean team = null;
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

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left"><%=country%></h1>
				<ul class="pull-right breadcrumb">
				<%
				for(int i = 0; i < teamList.length; i++){
				team = teamList[i];
				%>
				<li><a href="#<%=team.getTeam() %>"><%=team.getTeam() %></a></li>
				<%
					}
				%>
				</ul>
			</div><!--/container-->
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">
		<%
			VolunteerBean volunteer = null;
			for(int i = 0; i < teamList.length; i++){
				team = teamList[i];
		%>	
			<div class="row portfolio-item margin-bottom-10">
				<!-- Content Info -->
				<section id="<%=team.getTeam()%>">
				<div class="col-md-5">
					<h2><%=team.getTeam()%></h2>  
				</div>
				</section>
				<!-- End Content Info -->
			</div><!--/row-->  
			<br>
			<!-- Recent Works -->
			<div class="owl-carousel-v1 owl-work-v1">
				<div class="headline"><h2 class="pull-left">Team Members</h2>
					<div class="owl-navigation">
						<div class="customNavigation">
							<a class="owl-btn prev-v2"><i class="fa fa-angle-left"></i></a>
							<a class="owl-btn next-v2"><i class="fa fa-angle-right"></i></a>
						</div>
					</div><!--/navigation-->
				</div>

				<div class="owl-recent-works-v1">
					<% 
						for(int j = 0; j < team.getVolunteer().length; j++){
						volunteer = team.getVolunteer()[j];
					%>
					<div class="item">
						<a href="<%=request.getContextPath()%>/volunteer.do?command=member&memberNum=<%=volunteer.getMemberNum()%>">
							<em class="overflow-hidden">
								<img class="img-responsive" src="<%=volunteer.getLink() %>" alt="<%=volunteer.getFirstname() %><%=volunteer.getLastname() %>">
							</em>
							<span>
								<strong><%=volunteer.getFirstname() %><%=volunteer.getLastname() %></strong>
								<i><%=volunteer.getRole() %></i>
							</span>
						</a>
					</div>
					<%
						}
					%>
				</div>
			</div>
			<br><br><br>
				<%
					}
				%>	
			<!-- End Recent Works -->
			<br>
		</div><!--/container-->
		
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