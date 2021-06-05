<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<div class="breadcome-area" style="margin-left:20%">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<h1>RestTemplate Crud Operation</h1>
</div>
</div>
</div>
</div>
</div>

<div class="section-admin container-fluid" >
<div class="row admin text-center">
<c:if test="${message}!=null">
<div class="alert alert-success">${message}</div>
</c:if>
<div class="col-md-12">

<div class="col-md-12">
<table class="table table-bordered">
<tr>
<td>Id</td>
<td>Username</td>
<td>Email</td>
<td>Mobile</td>
<td>Password</td>

</tr>

<tr>
<td>${list.getId()}</td>
<td>${list.getUsername()}</td>
<td>${list.getEmail()}</td>
<td>${list.getRoles()}</td>
<td>${list.getPassword()}</td>
</tr>

</table>
</div>
</div>
</div>
</body>
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

</html>