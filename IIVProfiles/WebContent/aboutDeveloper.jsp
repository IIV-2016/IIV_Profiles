<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>Our Team | Unify - Responsive Website Template</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

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

	<!-- CSS Theme -->
	<link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="assets/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="assets/css/custom.css">
	<%@include file="./header.jsp"%>
</head>

<body>
	<div class="wrapper">
		<!--=== Breadcrumbs v3 ===-->
		<div class="breadcrumbs-v1 img-v1 margin-bottom-60">
			<div class="container text-center">
				<h4>About Team</h4>
				<h1>Our Professional Team Members</h1>
			</div><!--/end container-->
		</div>
		<!--=== End Breadcrumbs v3 ===-->

		<!--=== Team v5 ===-->
		<div class="container">
			<div class="headline-center margin-bottom-60">
				<h2>Developer</h2>
				<p>We are 2016 IIV members<br>
				<h3>thaIT</h3></p>
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
		<!--=== End Team v5 ===-->

		<hr class="margin-bottom-60">

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
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->
</body>
</html>
