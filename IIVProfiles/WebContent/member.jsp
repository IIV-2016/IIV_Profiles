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
		<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.css">
		<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
		
		<link rel="stylesheet" href="assets/css/header_fix.css">
		
	  	<c:choose>
	  		<c:when test="${empty member}">
				<%@include file="./header.jsp"%>
			</c:when>
			<c:otherwise>
				<%@include file="./header2.jsp"%>
			</c:otherwise>
		</c:choose>	
	</head>
	<body class="header-fixed">
		<div class="wrapper">
		  	<c:choose>
		  		<c:when test="${empty member}">
			  		<div class="container content">
						<div class="heading heading-v1 margin-bottom">
							<h2><i class="fa fa-ban"></i></h2>
							<h4>Non-members Access  Restriction.</h4>
						</div>
					</div>
					<br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br>
				</c:when>
				<c:otherwise>
				<div class="breadcrumbs">
					<div class="container">
						<h1 class="pull-left"><%=volunteer.getFirstname()%> <%=volunteer.getLastname()%></h1>
						<ul class="pull-right breadcrumb">
							<li><a href="#IIVMEMBER">IIV MEMBER</a></li>
							<li><a href="#PERSONALINFORMATION">PERSONAL INFORMATION</a></li>
							<li><a href="#MYSKILLS">MY SKILLS</a></li>
						</ul>
					</div>
				</div>
				<div class="container content-sm">
					<div class="row about-me">
						<div class="col-sm-4 shadow-wrapper md-margin-bottom-40">
							<img class="img-responsive img-bordered full-width" src="<%=volunteer.getImage()%>" alt="<%=volunteer.getFirstname()%> <%=volunteer.getLastname()%>">
						</div>
		
						<div class="col-sm-8">
							<div class="col-md-6 md-margin-bottom-50">
								<div class="headline-left margin-bottom-30">
									<h2 class="headline-brd heading-md">
										<section id="IIVMEMBER">IIV MEMBER</section>
									</h2>
								</div>
								<p>
									<h5 class="heading-xs">
										<i class="fa fa-angle-right color-green"></i>
										Team<span class="pull-right">
										<a href="<%=request.getContextPath()%>/volunteer.do?command=teamDetail&teamNumber=<%=volunteer.getTeamNumber()%>">	
										<i class="fa fa-angle-double-right color-green"></i><%=volunteer.getTeam().getName()%></span>
										</a>
									</h5>
								</p>
								<p>
									<h5 class="heading-xs">
										<i class="fa fa-angle-right color-green"></i>
										Year of Service<span class="pull-right"><%=volunteer.getTeam().getYear()%></span>
									</h5>
								</p>
								<p>
									<h5 class="heading-xs">
										<i class="fa fa-angle-right color-green"></i>
										Country<span class="pull-right"><%=volunteer.getTeam().getCountry()%></span>
									</h5>
								</p>
								<p>
									<h5 class="heading-xs">
										<i class="fa fa-angle-right color-green"></i>
										Organization<span class="pull-right"><%=volunteer.getTeam().getOrganization()%></span>
									</h5>
								</p>
								<hr>
							</div>
							<div class="col-md-6 md-margin-bottom-50">
								<div class="headline-left margin-bottom-30">
									<h2 class="headline-brd heading-md">
										<section id="PERSONALINFORMATION">PERSONAL INFORMATION</section>
									</h2>
								</div>
								<p>
									<h5 class="heading-xs">
										<i class="fa fa-angle-right color-green"></i>
										Gender<span class="pull-right"><%=volunteer.getGender()%></span>
									</h5>
								</p>							
								<p>
									<h5 class="heading-xs">
										<i class="fa fa-angle-right color-green"></i>
										Date of Birth<span class="pull-right"><%=volunteer.getBirth()%></span>
									</h5>
								</p>
								<p>
									<h5 class="heading-xs">
										<i class="fa fa-angle-right color-green"></i>
										University<span class="pull-right"><%=volunteer.getUniversity()%></span>
									</h5>
								</p>
								<p>
									<h5 class="heading-xs">
										<i class="fa fa-angle-right color-green"></i>
										Major<span class="pull-right"><%=volunteer.getMajor()%></span>
									</h5>
								</p>
								<hr>
							</div>
							<%
								if (volunteer.getExpertise().equals("") && volunteer.getExpertise().equals("")) {
								} else {
							%>
							<div class="col-md-6 progress-box md-margin-bottom-50">
								<div class="headline-left margin-bottom-30">
									<h2 class="headline-brd heading-md">
										<section id="MYSKILLS">MY SKILLS</section>
									</h2>
								</div>
								<h5 class="heading-xs">
									<%=volunteer.getExpertise()%><br>
									<%=volunteer.getExperience()%>
									<spanclass="pull-right"></span>
								</h5>
								<hr/>
							</div>
							<%
								}
							%>
							<div class="col-md-6 progress-box md-margin-bottom-50">
										<div class="headline-left margin-bottom-30">
											<h2 class="headline-brd heading-md">
												<section id="MYSKILLS">BOOKMARKS</section>
											</h2>
										</div>
									<form action="<%=request.getContextPath()%>/bookmark.do" method="post">
										<input type="hidden" name="command" value="registration">
										<input type="hidden" name="likedMemberNumber" value="<%=volunteer.getNumber()%>">
										<input type="hidden" name="memberNumber" value="${member.number}">
										<button class="btn-u btn-brd btn-brd-hover rounded-4x btn-u-dark btn-u-xs" type="submit">Registration</button>
									</form>
								<hr/>
							</div>
						</div>
					</div>
				</div>		
				<div class="call-action-v2 parallaxBg">
					<div class="container">
						<h2>CONTACT ME!</h2>
						<p>This is my e-mail address :)</p>
						<a href="mailto:<%=volunteer.getEmail()%>" class="btn-u">Get In
							Touch</a>
					</div>
					<br>
				</div>
				<br>
				</c:otherwise>
			</c:choose>
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
		
		<script type="text/javascript" src="assets/js/header_fix.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script src="assets/plugins/placeholder-IE-fixes.js"></script>
		<![endif]-->
	</body>
</html>