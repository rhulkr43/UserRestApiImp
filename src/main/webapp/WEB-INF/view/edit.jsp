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

<div class="breadcome-area" style="margin-left:20%">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<h1>Edit User</h1>
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
<form action="/update" method="POST">
<table class="table table-bordered">
<tr>
<td>Id</td><td><input type="text" name="id" value="${list.getId()}" class="form-control"/></td>
</tr>
<tr>
<td>Username</td><td><input type="text" value="${list.getUsername()}" name="username" class="form-control"/></td>
</tr>
<tr>
<td>Email</td><td><input type="text" name="email" value="${list.getEmail()}" class="form-control"/></td>
</tr>
<tr>
<td>Password</td><td><input type="text" name="password" value="${list.getPassword()}" class="form-control"/></td>
</tr>
<tr>
<td>Role</td><td><select name="roles" class="form-control">
<option value="${list.getRoles()}">${list.getRoles()}</option>
<option value="Admin">Admin</option>
<option value="user">User</option>
</select></td>
</tr>
<tr>
<td></td><td><input type="submit"  class="btn btn-primary"/></td>
</tr>
</table>
</form>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>