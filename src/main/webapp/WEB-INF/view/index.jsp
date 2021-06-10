
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  
<!DOCTYPE html>
<html>

<jsp:include page="header.jsp"></jsp:include>
<%@page import="com.project.Model.User"%>
<%
User user=(User) session.getAttribute("user");
if(user==null){
	response.sendRedirect("/login");
}
String admin=user.getRoles();

%>
<div class="breadcome-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">

</div>
</div>
</div>
</div>
</div>


	<div class="section-admin container-fluid" style="margin-left:20%">
<div class="row admin text-center">
<%

String display;
if(admin.equals("Admin"))
{
	%>
	

<div class="row">

<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-15">
<h4 class="text-left text-uppercase"><b>Total User</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="col-xs-3 mar-bot-15 text-left">
<label class="label bg-green">30% <i class="fa fa-level-up" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">${totaluser}</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 78%;" class="progress-bar bg-green"></div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="margin-bottom:1px;">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Active User</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="text-left col-xs-3 mar-bot-15">
<label class="label bg-red">15% <i class="fa fa-level-down" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">5,000</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 38%;" class="progress-bar progress-bar-danger bg-red"></div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>InActive User</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="text-left col-xs-3 mar-bot-15">
<label class="label bg-blue">50% <i class="fa fa-level-up" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">$70,000</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 60%;" class="progress-bar bg-blue"></div>
</div>
</div>
</div>

</div>

<div class="row" style="margin-top:15%">

<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-15">
<h4 class="text-left text-uppercase"><b>Total Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="col-xs-3 mar-bot-15 text-left">
<label class="label bg-green">30% <i class="fa fa-level-up" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">0</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 78%;" class="progress-bar bg-green"></div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="margin-bottom:1px;">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Completed Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="text-left col-xs-3 mar-bot-15">
<label class="label bg-red">15% <i class="fa fa-level-down" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">5,000</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 38%;" class="progress-bar progress-bar-danger bg-red"></div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Pending Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="text-left col-xs-3 mar-bot-15">
<label class="label bg-blue">50% <i class="fa fa-level-up" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">$70,000</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 60%;" class="progress-bar bg-blue"></div>
</div>
</div>
</div>

</div>

</div>
</div>
</div>
	
	<%
}else{
	%>
	<%=admin %>
	<div class="row" style="margin-top:15%">

<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-15">
<h4 class="text-left text-uppercase"><b>Total Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="col-xs-3 mar-bot-15 text-left">
<label class="label bg-green">30% <i class="fa fa-level-up" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">0</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 78%;" class="progress-bar bg-green"></div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="margin-bottom:1px;">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Completed Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="text-left col-xs-3 mar-bot-15">
<label class="label bg-red">15% <i class="fa fa-level-down" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">5,000</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 38%;" class="progress-bar progress-bar-danger bg-red"></div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Pending Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">
<div class="text-left col-xs-3 mar-bot-15">
<label class="label bg-blue">50% <i class="fa fa-level-up" aria-hidden="true"></i></label>
</div>
<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">$70,000</h2>
</div>
</div>
<div class="progress progress-mini">
<div style="width: 60%;" class="progress-bar bg-blue"></div>
</div>
</div>
</div>

</div>
	
	<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
