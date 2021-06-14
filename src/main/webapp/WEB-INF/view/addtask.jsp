<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/select2/select2.min.css">
<jsp:include page="header.jsp"></jsp:include>
<body>
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
<li><span class="bread-blod">Task</span>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="section-admin container-fluid"  style="margin-left:20%;margin-top:3%" >
<div class="row admin text-center">

<div class="col-md-12">
<form action="/task/add" method="POST" enctype="multipart/form-data">
<table class="table table-bordered">
<tr>
<td>User</td><td>
<select name="user_id" class="select2_demo_3 form-control">
<option>Select User</option>
<c:forEach var="list" items="${list}">
<c:if test="${list.roles=='User'}">
<option value="${list.getId()}">${list.getUsername()}</option>
</c:if>

</c:forEach>
</select>

</td>
</tr>
<tr>
<td>Title</td><td><input type="text" name="title" class="form-control" placeholder="Task Title"/></td>
</tr>
<tr>
<td>Comment</td><td><textarea rows="10" cols="10" name="comment" placeholder="Task Comment" class="form-control"></textarea></td>
</tr>
<tr>
<td>Attachment</td><td>
 <div class="image-upload">
        <input type="file" name="file" id="logo" >
        <label for="logo" class="upload-field" id="file-label">
            <div class="file-thumbnail">
                <img id="image-preview" src="https://www.btklsby.go.id/images/placeholder/basic.png" alt="">
                <h3 id="filename">
                    Drag and Drop
                </h3>
                <p >Supports JPG, PNG, SVG</p>
            </div>
        </label>
    </div>
</td>
</tr>
<tr>
<td></td><td><input type="submit"  class="btn btn-primary"/></td>
</tr>
</table>
</form>
</div>
</div>
<script src="<%=request.getContextPath() %>/js/vendor/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath() %>/js/select2/select2.full.min.js"></script>
<script src="<%=request.getContextPath() %>/js/select2/select2-active.js"></script>

<style>
.image-upload{
    position: relative;
    max-width: 360px;
  margin: 0 auto;
  overflow: hidden;
}
.image-upload input {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        opacity: 0;
    }
.upload-field {
  display: block;
  background: #F4FAFE;
  padding: 12px;
  border-radius: 11px;

}

.upload-field .file-thumbnail {
  cursor: pointer;
  border: 1px dashed #BBD9EC;
  border-radius: 11px;
  text-align: center;
  padding: 20px;
}

.upload-field .file-thumbnail img {
  width: 50px;
}

.upload-field .file-thumbnail h3 {
  font-size: 12px;
  color: #000000;
  font-weight: 600;
  margin-bottom: 4px;
}

.upload-field .file-thumbnail p {
  font-size: 12px;
  color: #9ABCD1;
  margin-bottom: 0;
}
</style>
<jsp:include page="footer.jsp"></jsp:include>
</body>
