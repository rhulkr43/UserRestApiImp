<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!doctype html>
<html class="no-js" lang="en">

<!-- Mirrored from colorlib.com/polygon/jeweler/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 05 Mar 2021 05:20:58 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Login Page</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

<link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/font-awesome.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/owl.carousel.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/owl.theme.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/owl.transitions.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/animate.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/normalize.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/main.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/morrisjs/morris.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/scrollbar/jquery.mCustomScrollbar.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/metisMenu/metisMenu.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/metisMenu/metisMenu-vertical.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/calendar/fullcalendar.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/calendar/fullcalendar.print.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/form/all-type-forms.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/responsive.css">

<script src="<%= request.getContextPath() %>/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
<div class="color-line"></div>

<div class="container-fluid">
<div class="row" style="margin-top:8%">
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-md-4 col-sm-4 col-xs-12">
<div class="text-center m-b-md custom-login">
<h3>Task Management System</h3>

</div>
<div class="hpanel">
<div class="panel-body">
<c:if test="${message!=null}">
<div class="alert alert-danger">${message}</div>
</c:if>
<form action="<%= request.getContextPath() %>/login" id="loginForm" method="POST">
<div class="form-group">
<label class="control-label" for="username">Username</label>
<input type="text"   required="" name="username" id="username" class="form-control">

</div>
<div class="form-group">
<label class="control-label" for="password">Password</label>
<input type="password" name="password" id="password" class="form-control">

</div>


<button class="btn btn-success btn-block loginbtn">Login</button>

</form>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
</div>

</div>

<script src="<%= request.getContextPath() %>/js/vendor/jquery-1.11.3.min.js"></script>

<script src="<%= request.getContextPath() %>/js/bootstrap.min.js"></script>

<script src="<%= request.getContextPath() %>/js/wow.min.js"></script>

<script src="<%= request.getContextPath() %>/js/jquery-price-slider.js"></script>

<script src="<%= request.getContextPath() %>/js/jquery.meanmenu.js"></script>

<script src="<%= request.getContextPath() %>/js/owl.carousel.min.js"></script>

<script src="<%= request.getContextPath() %>/js/jquery.sticky.js"></script>

<script src="<%= request.getContextPath() %>/js/jquery.scrollUp.min.js"></script>

<script src="<%= request.getContextPath() %>/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="<%= request.getContextPath() %>/js/scrollbar/mCustomScrollbar-active.js"></script>

<script src="<%= request.getContextPath() %>/js/metisMenu/metisMenu.min.js"></script>
<script src="<%= request.getContextPath() %>/js/metisMenu/metisMenu-active.js"></script>

<script src="<%= request.getContextPath() %>/js/tab.js"></script>

<script src="<%= request.getContextPath() %>/js/icheck/icheck.min.js"></script>
<script src="<%= request.getContextPath() %>/js/icheck/icheck-active.js"></script>

<script src="<%= request.getContextPath() %>/js/plugins.js"></script>

<script src="<%= request.getContextPath() %>/js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>

</body>

<!-- Mirrored from colorlib.com/polygon/jeweler/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 05 Mar 2021 05:20:58 GMT -->
</html>