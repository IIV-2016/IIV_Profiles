<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<title>About Us | International ICT Volunteers</title>
		
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
			<div class="breadcrumbs-v3 img-v1 text-center">
				<div class="container">
					<h1>About Us</h1>
					<p>International ICT Volunteers</p>
				</div>
			</div>
			<!--=== Title v1 ===-->
			<div class="container content-sm">
				<div class="title-v1 no-margin-bottom">
					<p class="no-margin-bottom">
					<strong>International ICT Volunteers programme (IIV)</strong> is an open international platform <br>
					for mobilising resources of volunteers who can help promote ICT for development.<br><br>
					The programme was initiated by the International Telecommunication Union (ITU) <br>
					and is implemented in partnerships with multiple stakeholders including governments, NGOs, academia, and private sector.<br><br>
					IIVs comprise international volunteers and national volunteers. <br><br>
					<strong>International volunteers</strong> are dispatched to work outside their home countries <br>
					while <strong>national volunteers</strong> work in their home countries usually as part of local volunteers prorgammes.</p><br><br>
				</div>
			</div>
			<div class="service-block-v4">
				<div class="container content-sm">
					<div class="row">
						<div class="col-md-4 service-desc md-margin-bottom-50">
							<i class="icon-screen-desktop"></i>
							<h3>ICT Development and Promotion</h3>
							<p class="no-margin-bottom">
							IIVs help promote digital societies and ICT literacy at all levels. <br>
							They harness digital technologies to accelerate social and economic development</p>
						</div>
						<div class="col-md-4 service-desc md-margin-bottom-50">
							<i class="icon-share"></i>
							<h3>People Network</h3>
							<p class="no-margin-bottom">
							IIV is an internationally social network of volunteers <br>
							from different backgrounds, different countries, different age groups <br>
							but common desire for doing good deeds.</p>
						</div>
						<div class="col-md-4 service-desc">
							<i class="icon-energy"></i>
							<h3>Platform of Innovations</h3>
							<p class="no-margin-bottom">
							Bringing together various skills, knowledge, experiences, and spirits.<br>
							We create a platform - the one that makes innovations and inspire people.</p><br>
						</div>
					</div>
				</div>
			</div>
			<%@include file="./footer.jsp"%>
		</div>
	</body>
</html>