<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>About Developer | International ICT Volunteers</title>

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
		
		<%@include file="./header.jsp"%>
	</head>
	<body class="header-fixed">  
		<div class="wrapper">
			<div class="breadcrumbs-v1 img-v1 text-center">
				<div class="container">
						<h1>About </br> Developer</h1>
				</div>
			</div>	
			<div class="container content">
				<div class="heading heading-v1 margin-bottom-40">
					<h2>Developer <span class="color-green">thaIT</span></h2>
					<p>We are 2016 IIV members</p>
				</div>		
				<div class="row team-v5 margin-bottom-30">
					<div class="col-sm-4 sm-margin-bottom-50">
						<div class="team-img">
							<img class="img-responsive" src="assets/img/developer/jinny.jpg" alt="">
							<div class="team-hover">
								<ul class="list-inline team-social-v5">
									<li><a href="mailto:023and@gmail.com"><i class="rounded-x fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<span>Jinny</span>
						<small>Developer</small>
					</div>
					<div class="col-sm-4 sm-margin-bottom-50">
						<div class="team-img">
							<img class="img-responsive" src="assets/img/developer/danbi.jpg" alt="">
							<div class="team-hover">
								<ul class="list-inline team-social-v5">
									<li><a href="mailto:danbi066@gmail.com"><i class="rounded-x fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<span>Danbi</span>
						<small>Developer</small>
					</div>
					<div class="col-sm-4">
						<div class="team-img">
							<img class="img-responsive" src="assets/img/developer/jiyeon.jpg" alt="">
							<div class="team-hover">
								<ul class="list-inline team-social-v5">
									<li><a href="mailto:bbologi94@gmail.com"><i class="rounded-x fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<span>Jiyeon</span>
						<small>Developer</small>
					</div>
				</div><!--/end team v5-->
			</div>
		</div>
		<%@include file="./footer.jsp"%>
	
		<!-- JS Global Compulsory -->
		<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
		<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<!-- JS Implementing Plugins -->
		<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
		<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
		<!-- JS Customization -->
		<script type="text/javascript" src="assets/js/custom.js"></script>
		<!-- JS Page Level -->
		<script type="text/javascript" src="assets/js/app.js"></script>
		<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function() {
				App.init();
				StyleSwitcher.initStyleSwitcher();
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