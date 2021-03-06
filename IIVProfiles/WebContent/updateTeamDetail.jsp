<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>
<%@ page import="model.domain.TeamBean"%>
<%
	String referer = request.getHeader("referer");
	VolunteerBean member = (VolunteerBean) session.getAttribute("member");
	TeamBean team = (TeamBean) request.getAttribute("team");
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<title>Update | International ICT Volunteers</title>
		
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
		  	<c:choose>
		  		<c:when test="${empty member}">
			  		<div class="container content">
						<div class="heading heading-v1 margin-bottom">
							<h2><i class="fa fa-ban"></i></h2>
							<h4>Non-members Access  Restriction.</h4>
						</div>
					</div>
					<br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br>
				</c:when>
		  		<c:when test="${member.teamNumber != team.number}">
			  		<div class="container content">
						<div class="heading heading-v1 margin-bottom">
							<h2><i class="fa fa-ban"></i></h2>
							<h4>Access  Restriction.</h4>
						</div>
					</div>
					<br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br>
				</c:when>				
				<c:otherwise>				
				<form action="<%=request.getContextPath()%>/volunteer.do" method="post" id="frm">
					<input type="hidden" name="command" value="updateTeamDetail">
					<input type="hidden" name="teamNumber" value="<%=team.getNumber()%>">
					<div class="breadcrumbs">
						<div class="container">
							<h1 class="pull-left"><%=team.getName()%></h1>
							<ul class="pull-right breadcrumb">
								<li><a href="<%=referer%>">Before</a></li>
								<li class="color-green">Introduce</li>
							</ul>
						</div>
					</div>
					<div class="container content margin-bottom-50">
						<div class="row about-me">
							<div class="col-sm-9">
								<div>
									<div class="headline-left margin-bottom-30">
										<h2 class="headline-brd heading-md">Introduce</h2>
									</div>
								</div>
							</div>	
							<textarea class="form-control" name="introduce" id="smarteditor"><%=team.getIntroduce()%></textarea>
							<hr/>				
						</div>
					</div>		
					<div class="call-action-v2 parallaxBg">
						<div class="container">
							<button class="btn-u" id="savebutton" type="submit">save</button>
						</div>
					</div>
				</form>
				</c:otherwise>
			</c:choose>
			<%@include file="./footer.jsp"%>
		</div>

		<!-- JS Global Compulsory -->
		<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
		<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- JS Implementing Plugins -->
		<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
		<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
		<script type="text/javascript" src="assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
		
		<!-- JS Customization -->
		<script type="text/javascript" src="assets/js/custom.js"></script>
		
		<!-- JS Page Level -->
		<script type="text/javascript" src="assets/js/app.js"></script>
		<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
		<script type="text/javascript" src="assets/js/plugins/owl-recent-works.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function() {
				App.init();
				StyleSwitcher.initStyleSwitcher();
				OwlRecentWorks.initOwlRecentWorksV1();
			});
			
			$(function(){
			    var editor_object = [];
			    nhn.husky.EZCreator.createInIFrame({
			        oAppRef: editor_object,
			        elPlaceHolder: "smarteditor",
			        sSkinURI: "se2/SmartEditor2Skin.html", 
			        htParams : {
			            bUseToolbar : true,             
			            bUseVerticalResizer : false,
			            bUseModeChanger : false, 
			        }
			    });

			    $("#savebutton").click(function(){
			        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
			        $("#frm").submit();
			    })
			})
		</script>
		
		<script type="text/javascript" src="assets/js/header_fix.js"></script>
		<script type="text/javascript" src="se2/js/HuskyEZCreator.js" charset="utf-8"></script>
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script src="assets/plugins/placeholder-IE-fixes.js"></script>
		<![endif]-->
	</body>
</html>