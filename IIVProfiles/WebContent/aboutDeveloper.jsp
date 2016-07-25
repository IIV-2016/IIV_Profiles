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
				<h2>ACCOUNT DIRECTORS</h2>
				<p>Phasellus vitae ipsum ex. Etiam eu vestibulum ante. <br>
					Lorem ipsum <strong>dolor</strong> sit amet, consectetur adipiscing elit. Morbi libero libero, imperdiet fringilla </p>
			</div>

			<div class="row team-v5 margin-bottom-30">
				<div class="col-sm-4 sm-margin-bottom-50">
					<div class="team-img">
						<img class="img-responsive" src="assets/img/team/img1-md.jpg" alt="">
						<div class="team-hover">
							<ul class="list-inline team-social-v5">
								<li><a href="#"><i class="rounded-x fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="rounded-x fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="rounded-x fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
					<span>Marketing</span>
					<small>Technical Director</small>
					<p>Pellentesque habitant morbi tristique senectus netus et malesuada fames ac turpis egestas.</p>
				</div>
				<div class="col-sm-4 sm-margin-bottom-50">
					<div class="team-img">
						<img class="img-responsive" src="assets/img/team/img5-md.jpg" alt="">
						<div class="team-hover">
							<ul class="list-inline team-social-v5">
								<li><a href="#"><i class="rounded-x fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="rounded-x fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="rounded-x fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
					<span>Sara Lisbon</span>
					<small>Developer</small>
					<p>Pellentesque habitant morbi tristique senectus netus et malesuada fames ac turpis egestas.</p>
				</div>
				<div class="col-sm-4">
					<div class="team-img">
						<img class="img-responsive" src="assets/img/team/img3-md.jpg" alt="">
						<div class="team-hover">
							<ul class="list-inline team-social-v5">
								<li><a href="#"><i class="rounded-x fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="rounded-x fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="rounded-x fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
					<span>John Doe</span>
					<small>Designer</small>
					<p>Pellentesque habitant morbi tristique senectus netus et malesuada fames ac turpis egestas.</p>
				</div>
			</div><!--/end team v5-->
		</div>
		<!--=== End Team v5 ===-->

		<hr class="margin-bottom-60">

		<!--=== Call To Action v2 ===-->
		<div class="call-action-v2 parallaxBg">
			<div class="container">
				<h2>We are Hiring!</h2>
				<p>Curabitur hendrerit, lectus in bibendum pellentesque, lacus eros rutrum ligula</p>
				<a href="#" class="btn-u">Join Now</a>
			</div>
		</div>
		<!--=== End Call To Action v2 ===-->

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
