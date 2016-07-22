<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.domain.VolunteerBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashSet"%>
<%
	VolunteerBean[] list = (VolunteerBean[]) request.getAttribute("list");
	ArrayList<String> searchCountryList = (ArrayList<String>) request.getAttribute("searchCountryList");
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
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
		<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
		<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
		
		<%@include file="./header.jsp"%>
	</head>
	<body class="header-fixed">
		<div class="wrapper">
			<div class="job-img margin-bottom-30">
				<div class="title-box-v2">
					<h2>
						IIV Profiles <span class="color-green">Search</span>
					</h2>
				</div>
				<form name="search" method="get" action="<%=request.getContextPath()%>/volunteer.do">
					<input type="hidden" name="command" value="search">
					<div class="job-img-inputs">
						<div class="container">
							<div class="row">
								<div class="col-sm-4 md-margin-bottom-10">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-tag"></i></span>
										<input type="text" name="major" placeholder="what major you are looking for" class="form-control">
									</div>
								</div>
								<div class="col-sm-4">
									<input type=submit class="btn-u btn-block btn-u-dark" value="Search Volunteer">
								</div>
							</div>
						</div>
					</div>
				</form>
				<div class="content-xs">
					<div id="filters-container" class="cbp-l-filters-text content-xs">
						<div data-filter="*" class="cbp-filter-item-active cbp-filter-item">
							All</div> |
						<%
							if (list == null || searchCountryList.size() == 0) {
						%>
						<%
							} else {
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
			</div>
			<div id="grid-container" class="cbp-l-grid-agency">
				<%
					if (list == null || list.length == 0) {
				%>
				<%
					} else {
						VolunteerBean volunteer = null;
						for (int i = 0; i < list.length; i++) {
							volunteer = list[i];
				%>
				<div class="cbp-item <%=volunteer.getCountry()%>">
					<div class="cbp-caption margin-bottom-20">
						<div class="col-md-3 col-sm-6 md-margin-bottom-40">
							<div class="easy-block-v1">
								<div class="easy-block-v1-badge rgba-default"><%=volunteer.getRole()%></div>
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<img src="<%=volunteer.getLink()%>" alt="<%=volunteer.getFirstname()%><%=volunteer.getLastname()%>">
										</div>
									</div>
								</div>
								<div class="overflow-h">
									<h3><%=volunteer.getFirstname()%> <%=volunteer.getLastname()%></h3>
									<div class="star-vote pull-right">
										<ul class="list-inline">
											<li><i class="color-green fa fa-star"></i></li>
										</ul>
									</div>
								</div>
								<ul class="list-unstyled">
									<li><span class="color-green">Country:</span> <%=volunteer.getCountry()%></li>
									<li><span class="color-green">Major:</span> <%=volunteer.getMajor()%></li>
								</ul>
								<a class="btn-u btn-u-sm" href="<%=request.getContextPath()%>/volunteer.do?command=member&memberNum=<%=volunteer.getMemberNum()%>">View More</a>
							</div>
						</div>
					</div>
				</div>
				<%
						}
					}
				%>
			</div>
			
			<%@include file="./footer.jsp"%>
		</div>
	</body>
</html>
