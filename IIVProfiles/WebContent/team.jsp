<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>
<%@ page import="model.domain.TeamBean"%>
<%
	TeamBean[] teamList = (TeamBean[]) request.getAttribute("teamList");
	String country = (String) request.getAttribute("country");
	TeamBean team = null;
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<%@include file="./header.jsp"%>
		<title>Team List | International ICT Volunteers</title>
		
		<!-- Meta -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="favicon.ico">
		
		<!-- Web Fonts -->
		<link rel="stylesheet"
			href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">
		
		<!-- CSS Global Compulsory -->
		<link rel="stylesheet"
			href="assets/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/style.css">
		
		<!-- CSS Header and Footer -->
		<link rel="stylesheet" href="assets/css/headers/header-v6.css">
		<link rel="stylesheet" href="assets/css/footers/footer-v1.css">
		
		<!-- CSS Implementing Plugins -->
		<link rel="stylesheet" href="assets/plugins/animate.css">
		<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
		
		<!-- CSS Page Style -->
		<link rel="stylesheet" href="assets/css/pages/portfolio-v1.css">
		
		<!-- CSS Theme -->
		<link rel="stylesheet" href="assets/css/theme-colors/default.css"
			id="style_color">
		<link rel="stylesheet" href="assets/css/theme-skins/dark.css">
		
		<!-- CSS Customization -->
		<link rel="stylesheet" href="assets/css/custom.css">
	</head>
	<body>
		<div class="wrapper">
			<div class="header">
				<div class="container">
					<h1 class="pull-left"><%=country%></h1>
					<ul class="pull-right breadcrumb">
						<%
							for (int i = 0; i < teamList.length; i++) {
								team = teamList[i];
						%>
						<li><a href="#<%=team.getName()%>"><%=team.getName()%></a></li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
			<div class="container content">
				<%
					VolunteerBean volunteer = null;
					for (int i = 0; i < teamList.length; i++) {
						team = teamList[i];
				%>
				<div class="row portfolio-item">
					<section id="<%=team.getName()%>">
						<div class="heading heading-v1">
							<h2>
								<a href="<%=request.getContextPath()%>/volunteer.do?command=teamDetail&teamNumber=<%=team.getNumber()%>"><h2><%=team.getName()%>
								<i class="fa fa-angle-right" style="color: #72c02c;"></i><i class="fa fa-angle-right" style="color: #72c02c;"></i></a>
							</h2>
						</div>
					</section>
				</div>
				<div class="owl-carousel-v1 owl-work-v1">
					<div class="headline">
						<h2 class="pull-left">Team Members</h2>
						<div class="owl-navigation">
							<div class="customNavigation">
								<a class="owl-btn prev-v2"><i class="fa fa-angle-left"></i></a> 
								<a class="owl-btn next-v2"><i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
	
					<div class="owl-recent-works-v1">
						<%
							for (int j = 0; j < team.getVolunteer().length; j++) {
									volunteer = team.getVolunteer()[j];
						%>
						<div class="item">
							<a href="<%=request.getContextPath()%>/volunteer.do?command=member&memberNumber=<%=volunteer.getNumber()%>">
								<em class="overflow-hidden"> <img class="img-responsive" src="<%=volunteer.getImage()%>" alt="<%=volunteer.getFirstname()%><%=volunteer.getLastname()%>"></em>
								<span> <strong><%=volunteer.getFirstname()%><%=volunteer.getLastname()%></strong><i><%=volunteer.getRole()%></i></span>
							</a>
						</div>
						<%
							}
						%>
					</div>
				</div>
				<hr>
				<%
					}
				%>
			</div>
			<br>
			<%@include file="./footer.jsp"%>
		</div>
	
		<!-- JS Global Compulsory -->
		<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
		<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	
		<!-- JS Implementing Plugins -->
		<script type="text/javascript" src="assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	
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