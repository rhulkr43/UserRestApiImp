<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  
<!DOCTYPE html>
<html>

<jsp:include page="header.jsp"></jsp:include>

<div class="breadcome-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<h1 class="text-center"> User  List</h1>
</div>
</div>
</div>
</div>
</div>


<div class="section-admin container-fluid" style="margin-left:20%;">
<div class="row admin text-center">
<c:if test="${message!=null}">
<div class="alert alert-success">${message}</div>
</c:if>


<div class="col-md-12">
<table class="table table-bordered">
<tr>
<td>Id</td>
<td>Username</td>
<td>Email</td>
<td>Mobile</td>
<td>View</td>
<td>Delete</td>
<td>Update</td>
</tr>
<c:forEach var="list" items="${list}">

<tr>
<td>${list.getId()}</td>
<td>${list.getUsername()}</td>
<td>${list.getEmail()}</td>
<td>${list.getRoles()}</td>
<td><a href="<%= request.getContextPath() %>/view/${list.getId()}" class="btn btn-primary">View</a></td>
<td><a href="<%= request.getContextPath() %>/delete/${list.getId()}" class="btn btn-danger">Delete</td>
<td><a href="<%= request.getContextPath() %>/edit/${list.getId()}" class="btn btn-success">Edit</a></td>
</tr>
</c:forEach>
</table>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
