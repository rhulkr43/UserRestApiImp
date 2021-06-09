<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  
<!DOCTYPE html>
<html>

<jsp:include page="header.jsp"></jsp:include>

<div class="breadcome-area" style="margin-left:20%">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<h1>User Details</h1>
</div>
</div>
</div>
</div>
</div>

<div class="section-admin container-fluid" style="margin-left:20%">
<div class="row admin text-center">
<c:if test="${message}!=null">
<div class="alert alert-success">${message}</div>
</c:if>
<div class="col-md-12">
<h3>User Details</h3>
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
<jsp:include page="footer.jsp"></jsp:include>