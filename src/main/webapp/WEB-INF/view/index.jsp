
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
<div class="breadcome-area" style="background: #c21a06;">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
<ul class="breadcome-menu">
<li><a href="#">Home</a> <span class="bread-slash">/</span>
</li>
<li><span class="bread-blod"><%=admin %></span>
</li>
</ul>
</div>
</div>
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

<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-15">
<h4 class="text-left text-uppercase"><b>Total User</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">

<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">${totaluser}</h2>
</div>
</div>

</div>
</div>

<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-15">
<h4 class="text-left text-uppercase"><b>Total Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">

<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">${totaltask}</h2>
</div>
</div>

</div>
</div>
<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12" style="margin-bottom:1px;">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Completed Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">

<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">${completed}</h2>
</div>
</div>

</div>
</div>
<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Pending Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">

<div class="col-xs-3 cus-gh-hd-pro">
<h2 class="text-right no-margin">${totaltask-completed}</h2>
</div>
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
	
	<div class="row">

<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-15">
<h4 class="text-left text-uppercase"><b>Total Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">

<div class="col-xs-9 cus-gh-hd-pro">

<h2 class="text-right no-margin"><i class="fa fa-tasks" aria-hidden="true"></i> ${totaltask}</h2>
</div>
</div>

</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="margin-bottom:1px;">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Completed Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">

<div class="col-xs-9 cus-gh-hd-pro">
<h2 class="text-right no-margin">${completed}</h2>
</div>
</div>

</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
<h4 class="text-left text-uppercase"><b>Pending Task</b></h4>
<div class="row vertical-center-box vertical-center-box-tablet">

<div class="col-xs-3 cus-gh-hd-pro">
<h2 class="text-right no-margin">${totaltask-completed}</h2>
</div>
</div>

</div>
</div>
</div>
	
	<%
}
%>
<div class="row">
<div class="col-lg-6"></div>
<div class="col-lg-6" >

<div id="chart_div" ></div>
</div>

</div>	
<script type="text/javascript">

        google.charts.load('current', {'packages':['corechart']});
	    google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Slices');
            data.addRows([
                
                ['Completed',${completed}],
                ['Pending', ${totaltask-completed}]
            ]);

            var options = {'title':'User Task Report Graphic Representation',
                'width':400,
                'height':300};
		   var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
