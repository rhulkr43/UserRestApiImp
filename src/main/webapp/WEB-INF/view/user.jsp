<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  
<!DOCTYPE html>
<html>

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
<li><span class="bread-blod">Add User</span>
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
<form action="/user/save" method="POST">
<table class="table table-bordered">
<tr>
<td>Username</td><td><input type="text" name="username" placeholder="Username" class="form-control"/></td>
</tr>
<tr>
<td>Email</td><td><input type="text" name="email" placeholder="Email" class="form-control"/></td>
</tr>
<tr>
<td>Password</td><td><input type="text" name="password" placeholder="Password" class="form-control"/></td>
</tr>
<tr>
<td>Role</td><td><select name="roles" class="form-control">
<option>Select User</option>
<option>Admin</option>
<option>User</option>
</select></td>
</tr>
<tr>
<td></td><td><input type="submit"  class="btn btn-primary"/></td>
</tr>
</table>
</form>
</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
