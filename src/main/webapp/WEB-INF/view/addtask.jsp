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
<body>
<div class="breadcome-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<h1 class="text-center">Add Task </h1>
</div>
</div>
</div>
</div>
</div>

<div class="section-admin container-fluid"  style="margin-left:5%" >
<div class="row admin text-center">
<c:if test="${message!=null}">
<div class="alert alert-success">${message}</div>
</c:if>
<div class="col-md-12">
<form action="/task/add" method="POST">
<table class="table table-bordered">
<tr>
<td>select User</td><td>
<select name="user_id" class="form-control">
<option>Select User</option>
<c:forEach var="list" items="${list}">
<option value="${list.getId()}">${list.getUsername()}</option>
</c:forEach>
</select>

</td>
</tr>
<tr>
<td>Title</td><td><input type="text" name="title" class="form-control"/></td>
</tr>
<tr>
<td>Comment</td><td><textarea rows="10" cols="10" name="comment" class="form-control"></textarea></td>
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
