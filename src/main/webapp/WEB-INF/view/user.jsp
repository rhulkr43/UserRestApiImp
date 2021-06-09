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
<h1 class="text-center">Add User  </h1>
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
<form action="/user/save" method="POST">
<table class="table table-bordered">
<tr>
<td>Username</td><td><input type="text" name="username" class="form-control"/></td>
</tr>
<tr>
<td>Email</td><td><input type="text" name="email" class="form-control"/></td>
</tr>
<tr>
<td>Password</td><td><input type="text" name="password" class="form-control"/></td>
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
