<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html class="no-js" lang="en">
<%@page import="com.project.Model.User"%>
<%
User user=(User) session.getAttribute("user");
if(user==null){
	response.sendRedirect("/login");
}
%>
<!-- Mirrored from colorlib.com/polygon/jeweler/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 05 Mar 2021 05:19:29 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title><%=user.getUsername() %></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

<link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/font-awesome.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/notifications/Lobibox.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/notifications/notifications.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/owl.carousel.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/owl.theme.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/owl.transitions.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/modals.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/animate.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/normalize.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/meanmenu.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/main.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/morrisjs/morris.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/scrollbar/jquery.mCustomScrollbar.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/metisMenu/metisMenu.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/metisMenu/metisMenu-vertical.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/calendar/fullcalendar.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/calendar/fullcalendar.print.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/responsive.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/data-table/bootstrap-table.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/data-table/bootstrap-editable.css">
<script src="<%= request.getContextPath() %>/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>

<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
<div class="left-sidebar-pro">
<jsp:include page="nav.jsp"></jsp:include>
</div>

<div class="all-content-wrapper">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="logo-pro">
<a href="javascript:void(0);"><h1>DMJL</h1></a>
</div>
</div>
</div>
</div>
<div class="header-advance-area">
<div class="header-top-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="header-top-wraper">
<div class="row">
<div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
<div class="menu-switcher-pro">
<button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
<i class="fa fa-bars"></i>
</button>
</div>
</div>
<div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
<div class="header-top-menu tabl-d-n">
<ul class="nav navbar-nav mai-top-nav">
<li class="nav-item"><a href="#" class="nav-link">Home</a>
</li>
<li class="nav-item"><a href="#" class="nav-link">About</a>
</li>
<li class="nav-item"><a href="#" class="nav-link">Services</a>
 </li>
<li class="nav-item"><a href="#" class="nav-link">Support</a>
</li>
</ul>
</div>
</div>
<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
<div class="header-right-info">
<ul class="nav navbar-nav mai-top-nav header-right-menu">

<li class="nav-item">
<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
<i class="fa fa-user adminpro-user-rounded header-riht-inf" aria-hidden="true"></i>
<span class="admin-name"><%=user.getRoles() %></span>
<i class="fa fa-angle-down adminpro-icon adminpro-down-arrow"></i>
</a>
<ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">

<li><a href="<%=request.getContextPath()%>/logout"><span class="fa fa-lock author-log-ic"></span>Log Out</a>
</li>
</ul>
</li>

</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
</div>

