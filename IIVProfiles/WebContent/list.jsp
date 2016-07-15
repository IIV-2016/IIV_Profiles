<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="model.domain.VolunteerBean" %> 
<%
	VolunteerBean [] list = (VolunteerBean[])request.getAttribute("list");
	String year = "2016";
 %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<script language=javascript>
		function getParameterByName(name) {
		    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		        results = regex.exec(location.search);
		    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
		}
		var year = getParameterByName('year');
		<%=year%> = year;
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
	<link rel="stylesheet" href="assets/plugins/animate.css">
	<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
	<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="assets/css/theme-skins/dark.css">

</head>

<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="volunteer.do">
					<img src="assets/img/logo1-default.png" alt="Logo"">
				</a>
				<!-- End Logo -->

				<!-- Toggle get grouped for better mobile display -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="fa fa-bars"></span>
				</button>
				<!-- End Toggle -->
			</div><!--/end container-->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
				<div class="container">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="dropdown active">
							<a href="<%=request.getContextPath()%>/volunteer.do">
								Home
							</a>
						</li>
						<!-- End Home -->
						<!-- Pages -->
						<li class="dropdown">
							<a href="<%=request.getContextPath()%>/aboutIIV.jsp">
								About IIV
							</a>
						</li>
					</ul>
				</div><!--/end container-->
			</div><!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->

		<!--=== Cube-Portfdlio ===-->
		<div class="cube-portfolio margin-bottom-20">
			<div class="content-xs">
				<div id="filters-container" class="cbp-l-filters-text content-xs">
					<div class="cbp-filter-item"><a href="<%=request.getContextPath()%>/volunteer.do?command=read&year=2016"> 2016 </a></div> |
					<div class="cbp-filter-item"><a href="<%=request.getContextPath()%>/volunteer.do?command=read&year=2015"> 2015 </a></div> |
					<div class="cbp-filter-item"><a href="<%=request.getContextPath()%>/volunteer.do?command=read&year=2014"> 2014 </a></div> |
					<div class="cbp-filter-item"><a href="<%=request.getContextPath()%>/volunteer.do?command=read&year=2013"> 2013 </a></div>
				</div><!--/end Filters Container-->
			</div>
			<div id="grid-container" class="cbp-l-grid-agency">
			<%
				if(list == null || list.length == 0){
			%>
			<p>empty</p>
			<%
				}else{
					VolunteerBean volunteer = null;
					for(int i = 0; i <list.length ; i++){
						volunteer = list[i];
			%>
				<div class="cbp-item graphic">
					<div class="cbp-caption margin-bottom-20">
							<a href="<%=request.getContextPath()%>/volunteer.do?command=team&country=<%=volunteer.getCountry()%>&year=<%=year%>">
							<img src="assets/img/country/<%=volunteer.getCountry()%>.png" alt=""></a>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title"><%=volunteer.getCountry()%></div>
						<div class="cbp-l-grid-agency-desc">dispatch : <%=volunteer.getMemberNum()%></div>
					</div>
				</div>
			<%
					} 
				}
			%>
			</div><!--/end Grid Container-->
			<br>
		</div>
		<!--=== End Cube-Portfdlio ===-->
		
		<br>
		
		<!--=== End Content Part ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="copyright">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<p>
									<a href="#">Made by 2016 IIV Long-term Volunteers</a>
								</p>
							</div>
						</div>
					</div>
				</div><!--/copyright-->
			</div>
		</div>
		<!--=== End Footer Version 1 ===-->
		
	</div><!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/plugins/cube-portfolio/cube-portfolio-2.js"></script>
	<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->
</body>
</html>
