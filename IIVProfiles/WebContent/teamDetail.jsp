<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>
<%@ page import="model.domain.TeamBean"%>
<%
	TeamBean team = (TeamBean) request.getAttribute("team");
	VolunteerBean member = (VolunteerBean) session.getAttribute("member");
%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<title>Team Detail | International ICT Volunteers</title>
		
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
			<div class="breadcrumbs">
				<div class="container">
					<h1 class="pull-left"><%=team.getName() %></h1>
					<ul class="pull-right breadcrumb">
						<li><%=team.getYear() %></li>
						<li><%=team.getCountry() %></li>
						<li>Organization : <%=team.getOrganization() %></li>
					</ul>
				</div>
			</div>
			<div class="container content">
				<div class="heading heading-v1 margin-bottom-40">
					<h2>Introduce</h2>
					<%
						if(member != null && team.getNumber() == member.getTeamNumber()){
					%>
					<a href="<%=request.getContextPath()%>/volunteer.do?command=updateTeamDetailForm&teamNumber=<%=team.getNumber() %>">
						<span class="pull-right"><h4><i class="fa fa-pencil color-green"></i></h4></span>
					</a>
					<%
						}
					%>
					<br>
					<%=team.getIntroduce() %>
				</div>
				<div class="margin-bottom-50">
						<div class="box-shadow shadow-effect-2">
							<img class="img-responsive" src="assets/img/iiv.jpg" alt="iiv">
						</div>
				</div>
				<section id="teamMember">
					<div class="tab-v1 margin-bottom-40">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab-img-1" data-toggle="tab">Team Member</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade in fade in active" id="tab-img-1">
								<div class="row margin-bottom-10">
								<%
									VolunteerBean volunteer = null;
									for (int i = 0; i < team.getVolunteer().length; i++) {
											volunteer = team.getVolunteer()[i];
								%>
									<div class="col-sm-3 col-xs-6 md-margin-bottom-20">
										<a href="<%=request.getContextPath()%>/volunteer.do?command=member&memberNumber=<%=volunteer.getNumber()%>">
										<img class="img-responsive" src="<%=volunteer.getImage()%>" alt="<%=volunteer.getFirstname()%> <%=volunteer.getLastname()%> "></a>
										<center><%=volunteer.getFirstname()%> <%=volunteer.getLastname()%></center>
									</div>
								<% 
									} 
								%>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section id="video">
					<div class="heading heading-v1 margin-bottom-40">
						<h2>Video</h2>
					</div>
					<div class="margin-bottom-60">
						<div class="responsive-video">
							<iframe width="100%" src="<%=team.getMovie()%>" frameborder="0" allowfullscreen></iframe>
						</div>
					</div>
				</section>
			</div>
			<%@include file="./footer.jsp"%>
		</div>
		<!-- JS Global Compulsory -->
		<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
		<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- JS Implementing Plugins -->
		<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
		<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>

		<!-- JS Page Level -->
		<script type="text/javascript" src="assets/js/app.js"></script>
		<script type="text/javascript" src="assets/js/header_fix.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script src="assets/plugins/placeholder-IE-fixes.js"></script>
		<![endif]-->
	</body>
</html>