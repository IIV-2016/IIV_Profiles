<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashSet"%>
<%
	VolunteerBean[] list = (VolunteerBean[]) request.getAttribute("list");
	ArrayList<String> searchCountryList = (ArrayList<String>) request.getAttribute("searchCountryList");
	VolunteerBean volunteer = null;
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<title>Bookmark | International ICT Volunteers</title>
		
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
		<link rel="stylesheet" href="assets/css/pages/page_search.css">
		<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
		<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
		
		<link rel="stylesheet" href="assets/css/text.css">
		<link rel="stylesheet" href="assets/css/header_fix.css">
		<link rel="stylesheet" href="assets/css/footer_fix.css">
		
	  	<c:choose>
	  		<c:when test="${empty member}">
				<%@include file="./header.jsp"%>
			</c:when>
			<c:otherwise>
				<%@include file="./header2.jsp"%>
			</c:otherwise>
		</c:choose>	
	</head>
	<body>
	<div class="wrap">
		<div class="footer_content margin-bottom-50">
			<div class="search-block parallaxBg">
				<div class="container">
					<div class="col-md-6 col-md-offset-3">
						<h1>MY <span class="color-green">BOOKMARK</span></h1>
					</div>
				</div>
			</div>
			
			<div class="container">
				<div class="content-xs">
					<div id="filters-container" class="cbp-l-filters-text content-xs">
						<%
							if (list == null || searchCountryList.size() == 0) {
						%>
						<%
							} else {
						%>
						<div class="heading heading-v1 margin-bottom">
							<h2>About <span class="color-green"><%=list.length %></span> results</h2>
						</div>
						<div data-filter="*" class="cbp-filter-item-active cbp-filter-item"> All</div> |
						<%
								for (int i = 0; i < searchCountryList.size(); i++) {
						%>
						<div data-filter=".<%=searchCountryList.get(i)%>" class="cbp-filter-item">
							<%=searchCountryList.get(i)%>
						</div>
						<%
								}
							}
						%>
					</div>
				</div>
				<%
					if (list == null || searchCountryList.size() == 0) {
				%>
				<div class="heading heading-v1 margin-bottom">
					<h2><span aria-hidden="true" class="icon-magnifier"></span></h2>
					<h4>We can't find your bookmarks.<h4>
				</div>
				<%
					}else{
				%>
		
				<div id="grid-container" class="cbp-l-grid-agency">
				<%
						for (int i = 0; i < list.length; i++) {
							volunteer = list[i];
				%>			
					<div class="cbp-item <%=volunteer.getTeam().getCountry()%>">
						<div class="cbp-caption margin-bottom-20">
							<div class="cbp-caption-defaultWrap">
								<div class="easy-block-v1">
									<div class="easy-block-v1-badge rgba-default"><%=volunteer.getRole()%></div>
									<a href="<%=request.getContextPath()%>/volunteer.do?command=member&memberNumber=<%=volunteer.getNumber()%>">	
									<img src="<%=volunteer.getImage()%>" alt="<%=volunteer.getFirstname()%> <%=volunteer.getLastname()%>">
									</a>
								</div>
							</div>
						</div>
						<div class="overflow-h">
							<h5><a href="<%=request.getContextPath()%>/bookmark.do?command=cancel&likedMemberNumber=<%=volunteer.getNumber()%>"><i class="pull-right color-green fa fa-star"></i></a></h5>
							<h3><%=volunteer.getFirstname()%> <%=volunteer.getLastname()%></h3>
						</div>
						<ul class="list-unstyled">
							<li><div class="text-line"><span class="color-green">Country:</span> <%=volunteer.getTeam().getCountry()%></div></li>
							<li><div class="text-line"><span class="color-green">Major:</span> <%=volunteer.getMajor()%></div></li>
						</ul>
					</div>
					<%
						}
					}
					%>					
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
		<script type="text/javascript" src="assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
		<!-- JS Page Level -->
		<script type="text/javascript" src="assets/js/app.js"></script>
		<script type="text/javascript" src="assets/js/plugins/cube-portfolio/cube-portfolio-4.js"></script>
		
		<script type="text/javascript" src="assets/js/header_fix.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script src="assets/plugins/placeholder-IE-fixes.js"></script>
		<![endif]-->
	</body>
</html>