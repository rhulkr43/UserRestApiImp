<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="header.jsp"></jsp:include>
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
<li><a href="#">Report List</a> <span class="bread-slash">/</span>
</li>
<li><span class="bread-blod">List</span>
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

<c:if test="${message!=null}">
<div class="alert alert-success">${message}</div>
</c:if>
<div class="col-md-12">
<table id="table">
<tr>

<td>Subject</td>
<td>Comment</td>
<td>Starting Time</td>
<td>Ending Time</td>
<td>Date</td>
<td>Status</td>
</tr>
<c:forEach var="list" items="${list}">

<tr>

<td>${list.subject}</td>
<td>${list.comment}</td>
<td>${list.startingtime}</td>
<td>${list.endingTime}</td>
<td>${list.date}</td>
<td>${list.isCompleted()}
<c:if test="${list.isCompleted}">
<button class="pd-setting">Done</button>
</c:if>
<c:if test="${!list.isCompleted}">
<button class="ds-setting">Pending</button>
</c:if>
</td>
</tr>
</c:forEach>
</table>
</div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
