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
<div class="breadcome-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<h1 class="text-center"> Task  List</h1>
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
<table class="table table-bordered">
<tr>

<td>Title</td>
<td>Comment</td>
<td>Date</td>
<td>Status</td>
</tr>
<c:forEach var="list" items="${list}">

<tr>

<td>${list.getTitle()}</td>
<td>${list.getComment()}</td>
<td>${list.getAssigndate()}</td>
<td>${list.isIsActive()}</td>
</tr>
</c:forEach>
</table>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>