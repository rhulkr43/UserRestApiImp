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
<li><a href="#">Home</a> <span class="bread-slash">/</span>
</li>
<li><span class="bread-blod">Task List</span>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="section-admin container-fluid" style="margin-left:20%;margin-top:3%">
<div class="row admin text-center">

<c:if test="${message!=null}">
<div class="alert alert-success">${message}</div>
</c:if>
<div class="col-md-12">
<table class="table table-bordered" id="task">
<thead>
<tr style="background: #b01508;
    color: white;
    font-size: 18px;
    font-weight: 200;
    text-align: center;
    position: inherit;
    text-align-last: center;" >
<th>Username</th>
<th>Title</th>
<th>Comment</th>
<th>Date</th>
<th>Attachment</th>
<th>Status</th>
</tr>
</thead>
<tbody>

<c:forEach var="list" items="${list}">

<tr>
<td>${list.getUser().getUsername()}
<td>${list.getTitle()}</td>
<td>${list.getComment()}</td>
<td>${list.getAssigndate()}</td>
<td>
<c:if test="${list.attachment==null }">
No Attachment
</c:if>
<c:if test="${list.attachment!=null }">

 <a href="javascript:void(0)">${list.attachment}</a>
</c:if>
</td>
<td>
<c:if test="${list.isActive==true}">

<i class="fa fa-check adminpro-checked-pro" aria-hidden="true"></i>
</c:if>
<c:if test="${list.isActive==false}">

<i class="fa fa-times adminpro-danger-error" aria-hidden="true"></i>
</c:if>
</td>

</tr>


</c:forEach>
<tbody>
<tfoot>
<tr style="background: #b01508;
    color: white;
    font-size: 18px;
    font-weight: 200;
    text-align: center;
    position: inherit;
    text-align-last: center;" >
<th>Username</th>
<th>Title</th>
<th>Comment</th>
<th>Date</th>
<th>Attachment</th>
<th>Status</th>
</tr>
</tfoot>
</table>
</div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
