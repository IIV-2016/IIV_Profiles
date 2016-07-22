<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>
<%
	VolunteerBean[] list = (VolunteerBean[]) request.getAttribute("list");
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
				var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex
						.exec(location.search);
				return results === null ? "" : decodeURIComponent(results[1].replace(
						/\+/g, " "));
			}
			var year = getParameterByName('year');
		<%=year%>
			= year;
		</script>
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
			<!--=== Cube-Portfdlio ===-->
			<div class="cube-portfolio margin-bottom-20">
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
				<div class="col-md-9">
					<div class="tab-v1 margin-bottom-40">
						<div class="tab-content">
							<div class="tab-pane fade in fade in active" id="tab-img-1">
								<div class="row margin-bottom-10">
									<%
										if (list == null || list.length == 0) {
									%>
									<%
										} else {
											VolunteerBean volunteer = null;
											for (int i = 0; i < list.length; i++) {
												volunteer = list[i];
									%>
									<div class="col-sm-3 col-xs-6 md-margin-bottom-20">
										<div class="cbp-item graphic">
											<div class="cbp-caption margin-bottom-20">
												<a href="<%=request.getContextPath()%>/volunteer.do?command=team&country=<%=volunteer.getCountry()%>&year=<%=year%>">
													<img src="assets/img/country/<%=volunteer.getCountry()%>.png" alt="<%=volunteer.getCountry()%>" class="img-responsive">
												</a>
											</div>
											<div class="cbp-title-dark">
												<div class="cbp-l-grid-agency-title"><%=volunteer.getCountry()%></div>
												<div class="cbp-l-grid-agency-desc"> dispatch : <%=volunteer.getMemberNum()%></div>
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
				<br>
			</div>
			<%@include file="./footer.jsp"%>
		</div>
	</body>
</html>
