<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<title>Team Application</title>
		
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
		
		<%@include file="./header.jsp"%>
	</head>
	
	<body>
		<div class="wrapper">
			<div class="breadcrumbs">
				<div class="container">
					<h1 class="pull-left">team name</h1>
					<ul class="pull-right breadcrumb">
						<li><a href="#teamMember">Team Member</a></li>
						<li><a href="#video">Video</a></li>
					</ul>
				</div>
			</div>
			<div class="container content">
				<div class="row">
					<div class="col-md-9">
						<div class="heading heading-v1 margin-bottom-40">
							<p>team introduce</p>
						</div>
						<div class="row margin-bottom-50">
							<div class="col-md-6 shadow-wrapper md-margin-bottom-40">
								<div class="box-shadow shadow-effect-2">
									<img class="img-responsive" src="assets/img/main/img4.jpg" alt="">
								</div>
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
											<div class="col-sm-3 col-xs-6 md-margin-bottom-20">
												<img class="img-responsive rounded-4x" src="assets/img/JihyungKIM.png" alt="">
											</div>
											<div class="col-sm-3 col-xs-6 md-margin-bottom-20">
												<img class="img-responsive rounded-4x" src="assets/img/JihyungKIM.png" alt="">
											</div>
											<div class="col-sm-3 col-xs-6">
												<img class="img-responsive rounded-4x" src="assets/img/JihyungKIM.png" alt="">
											</div>
											<div class="col-sm-3 col-xs-6">
												<img class="img-responsive rounded-4x" src="assets/img/JihyungKIM.png" alt="">
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
						<section id="video">
							<div class="heading heading-v1 margin-bottom-40">
								<h2>Introduction Video</h2>
								<p>team video introduce</p>
							</div>
	
							<div class="row margin-bottom-60">
								<div class="col-md-6">
									<div class="responsive-video">
										<iframe width="100%" src="//www.youtube.com/embed/Squv4KI751w" frameborder="0" allowfullscreen></iframe>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
			<%@include file="./footer.jsp"%>
		</div>
	</body>
</html>