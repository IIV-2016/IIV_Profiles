<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
	<head>
		<title>Log In | International ICT Volunteers</title>
	
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
	
		<!-- CSS Implementing Plugins -->
		<link rel="stylesheet" href="assets/plugins/animate.css">
		<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	
		<!-- CSS Page Style -->
		<link rel="stylesheet" href="assets/css/pages/page_log_reg_v2.css">
	</head>
	
	<body>
		<div class="container">
			<div class="reg-block">
				<div class="reg-block-header">
					<h2>Log In</h2>
				</div>
				<form action="<%=request.getContextPath()%>/login.do" method="post">
					<input type="hidden" name="command" value="login">
					<div class="input-group margin-bottom-20">
						<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
						<input type="text" class="form-control" name="id" placeholder="Email">
					</div>
					<div class="input-group margin-bottom-20">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input type="password" class="form-control" name="password" placeholder="Password">
					</div>
					<hr>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<button type="submit" class="btn-u btn-block">Log In</button>
						</div>
					</div>
				</form>
			</div>
			<!--End Reg Block-->
		</div><!--/container-->
		<!--=== End Content Part ===-->
	
		<!-- JS Global Compulsory -->
		<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
		<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function() {
				App.init();
			});
		</script>
		<script type="text/javascript">
			$.backstretch([
				"assets/img/iiv.jpg",
				], {
					fade: 1000,
					duration: 7000
				});
		</script>
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script src="assets/plugins/placeholder-IE-fixes.js"></script>
		<![endif]-->
	</body>
</html>