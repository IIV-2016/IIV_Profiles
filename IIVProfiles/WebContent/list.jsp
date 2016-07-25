<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.TeamBean"%>
<%
	TeamBean[] list = (TeamBean[]) request.getAttribute("list");
	String year = "2016";
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<script language=javascript>
			function getParameterByName(name) {
				name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
				var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex.exec(location.search);
				return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
			}
			var year = getParameterByName('year');
			<%=year%> = year;
		</script>
		<title>Home | International ICT Volunteers</title>
	
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
		
		<%@include file="./header.jsp"%>
	</head>
	<body class="header-fixed">
		<div class="wrapper">
			<div class="container content">
				<div class="content-xs">
					<div id="filters-container" class="cbp-l-filters-text content-xs">
						<div class="cbp-filter-item">
							<a href="<%=request.getContextPath()%>/volunteer.do?command=read&year=2016"> 2016 </a>
						</div> |
						<div class="cbp-filter-item">
							<a href="<%=request.getContextPath()%>/volunteer.do?command=read&year=2015"> 2015 </a>
						</div> |
						<div class="cbp-filter-item">
							<a href="<%=request.getContextPath()%>/volunteer.do?command=read&year=2014"> 2014 </a>
						</div> |
						<div class="cbp-filter-item">
							<a href="<%=request.getContextPath()%>/volunteer.do?command=read&year=2013"> 2013 </a>
						</div>
					</div>
				</div>
				<div class="content-xs">
					<div class="tab-v1 margin-bottom-40">
						<div class="tab-content">
							<div class="tab-pane fade in fade in active" id="tab-img-1">
								<div class="row margin-bottom-10">
									<%
										if (list == null || list.length == 0) {
									%>
									<%
										} else {
											TeamBean team = null;
											for (int i = 0; i < list.length; i++) {
												team = list[i];
									%>
									<div class="col-sm-3 col-xs-6 md-margin-bottom-20">
										<div class="cbp-item graphic">
											<div class="cbp-caption margin-bottom-20">
												<a href="<%=request.getContextPath()%>/volunteer.do?command=team&country=<%=team.getCountry()%>&year=<%=year%>">
													<img src="assets/img/country/<%=team.getCountry()%>.png" alt="<%=team.getCountry()%>" class="img-responsive">
												</a>
											</div>
											<div class="cbp-title-dark">
												<div class="cbp-l-grid-agency-title"><%=team.getCountry()%></div>
												<div class="cbp-l-grid-agency-desc"> dispatch team: <%=team.getNumber()%></div>
											</div>
										</div>
									</div>
									<%
											}
										}
									%>
								</div>
							</div>
						</div>
					</div>
				</div>
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

		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script src="assets/plugins/placeholder-IE-fixes.js"></script>
		<![endif]-->
	</body>
</html>
