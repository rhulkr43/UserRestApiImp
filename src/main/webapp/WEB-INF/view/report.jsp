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

<div class="section-admin container-fluid"  style="margin-left:20%" >
<div class="row admin text-center">

<div class="col-md-12">
<form action="/task/report/save" method="POST">
<table class="table table-bordered">
<tr>
<td>select User</td><td>
<select name="taskid" class="form-control">
<option value="">Select User</option>
<c:forEach var="list" items="${list}">
<option value="${list.getTask_id()}">${list.title}</option>
</c:forEach>
</select>

</td>
</tr>
<tr>
<td>Subject</td><td><input type="text" name="subject" class="form-control"/></td>
</tr>
<tr>
<td>Comment</td><td><textarea rows="10" cols="10" name="comment" class="form-control"></textarea></td>
</tr>
<tr>
<td>Starting</td><td><input type="time" name="startingtime" class="form-control"/></td>
</tr>
<tr>
<td>Ending Starting</td><td><input type="time" name="ending_time" class="form-control"/></td>
</tr>
<tr>
<td>Status</td><td>
<select class="form-control" name=status>
<option>Select Status</option>
<option value="false">InProcess</option>
<option value="true">Completed</option>
<option value="false">Pending</option>
</select>
</td>
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
