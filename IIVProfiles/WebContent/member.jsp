<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>
<%
	VolunteerBean volunteer = (VolunteerBean) request.getAttribute("volunteer");
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<title>Member | International ICT Volunteers</title>
		
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
		<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
		
		<!-- CSS Page Style -->
		<link rel="stylesheet" href="assets/css/pages/portfolio-v1.css">
		
		<%@include file="./header.jsp"%>
	</head>
	<body>
		<div class="wrapper">
			<br>
			<div class="col-md-6">
				<div class="carousel slide carousel-v1" id="myCarousel">
					<div class="carousel-inner">
						<div class="item active">
							<img src="<%=volunteer.getImage()%>" alt="<%=volunteer.getFirstname()%> <%=volunteer.getLastname()%>">
						</div>
					</div>
					<div class="carousel-arrow">
						<a data-slide="prev" href="#myCarousel" class="left carousel-control"> <i class="fa fa-angle-left"></i></a>
						<a data-slide="next" href="#myCarousel" class="right carousel-control"> <i class="fa fa-angle-right"></i></a>
					</div>
					<div class="overflow-h">
						<div>
							<h1><%=volunteer.getFirstname()%> <%=volunteer.getLastname()%>
							<div class="star-vote pull-right">
									<ul class="list-inline">
										<li><i class="color-green fa fa-star"></i></li>
									</ul>
							</div>
							</h1>
						</div>
						<p><span><%=volunteer.getTeam().getName()%></span>, <span><%=volunteer.getRole()%></span></p>
					</div>
				</div>
			</div>

			<div class="container content-sm">
				<div class="row">
					<div class="col-md-6 md-margin-bottom-50">
						<div class="headline-left margin-bottom-30">
							<h2 class="headline-brd heading-md">
								IIV <span class="color-green">MEMBER</span>
							</h2>
						</div>
						<p>
							<h4 class="heading-xs">
								Gender<span class="pull-right"><%=volunteer.getGender()%></span>
							</h4>
						</p>
						<p>
							<h4 class="heading-xs">
								Year of Service<span class="pull-right"><%=volunteer.getTeam().getYear()%></span>
							</h4>
						</p>
						<p>
							<h4 class="heading-xs">
								Country<span class="pull-right"><%=volunteer.getTeam().getCountry()%></span>
							</h4>
						</p>
						<p>
							<h4 class="heading-xs">
								Host Organization<span class="pull-right"><%=volunteer.getTeam().getOrganization()%></span>
							</h4>
						</p>
						<br>
					</div>
					<div class="col-md-6 md-margin-bottom-50">
						<div class="headline-left margin-bottom-30">
							<h2 class="headline-brd heading-md">
								PERSONAL <span class="color-green">INFORMATION</span>
							</h2>
						</div>
						<p>
							<h4 class="heading-xs">
								Date of Birth<span class="pull-right"><%=volunteer.getBirth()%></span>
							</h4>
						</p>
						<p>
							<h4 class="heading-xs">
								University<span class="pull-right"><%=volunteer.getUniversity()%></span>
							</h4>
						</p>
						<p>
							<h4 class="heading-xs">
								Major<span class="pull-right"><%=volunteer.getMajor()%></span>
							</h4>
						</p>
						<br>
					</div>
					<%
						if (volunteer.getExpertise().equals("") && volunteer.getExpertise().equals("")) {
						} else {
					%>
					<div class="col-md-6 progress-box md-margin-bottom-50">
						<div class="headline-left margin-bottom-30">
							<h2 class="headline-brd heading-md">
								MY <span class="color-green">SKILLS</span>
							</h2>
						</div>
						<h4 class="heading-xs">
							<%=volunteer.getExpertise()%><br>
							<%=volunteer.getExperience()%>
							<spanclass="pull-right"></span>
						</h4>
					</div>
					<%
						}
					%>
				</div>
			</div>
			<div class="call-action-v2 parallaxBg">
				<div class="container">
					<h2>CONTACT</h2>
					<p>you can send the e-mail to IIV</p>
					<a href="mailto:<%=volunteer.getEmail()%>" class="btn-u">Contact Email</a>
				</div>
				<br>
			</div>
			<br>
			<%@include file="./footer.jsp"%>
		</div>

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
