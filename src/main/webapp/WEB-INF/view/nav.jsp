<%@page import="com.project.Model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
User user=(User) session.getAttribute("user");
if(user==null){
	response.sendRedirect("/login");
}
%>
	<nav id="sidebar" class="">
	
<div class="left-sidebar-pro">
<nav class="">
<div class="sidebar-header">
<a href="javascript:void(0);"><h1>TMS</h1></a>
<strong><h1>TMS</h1></strong>
<p style="color: black;
    font-size: 18px;
    font-weight: bold;"><%=user.getUsername() %></p>
</div>
<div class="left-custom-menu-adp-wrap comment-scrollbar">
<nav class="sidebar-nav left-sidebar-menu-pro">
<ul class="metismenu" id="menu1">
<li>
<a  href="<%=request.getContextPath()%>/">
<i class="fa big-icon fa-home icon-wrap"></i>
<span class="mini-click-non">Dashboard</span>
</a>

</li>
<%
if(user.getRoles().equals("Admin"))
{
	%>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-home icon-wrap"></i> <span class="mini-click-non">User</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Bar Charts" href="<%=request.getContextPath() %>/user"><i class="fa fa-line-chart sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Add User</span></a></li>
<li><a title="Line Charts" href="<%=request.getContextPath() %>/user/list"><i class="fa fa-area-chart sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">List</span></a></li>
</ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-home icon-wrap"></i> <span class="mini-click-non">Task</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Bar Charts" href="<%=request.getContextPath() %>/task/add"><i class="fa fa-plus sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Add Task</span></a></li>
<li><a title="Line Charts" href="<%=request.getContextPath() %>/task/list"><i class="fa fa-list sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">List</span></a></li>
<li><a title="Line Charts" href="<%=request.getContextPath() %>/task/user/Report"><i class="fa fa-list sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Report</span></a></li>

</ul>
</li>
<%

}else{
	%>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-home icon-wrap"></i> <span class="mini-click-non">Task</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Bar Charts" href="<%=request.getContextPath() %>/user/task/pending"><i class="fa fa-plus sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Pending</span></a></li>
</ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-home icon-wrap"></i> <span class="mini-click-non">Task Report</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Bar Charts" href="<%=request.getContextPath() %>/task/report"><i class="fa fa-plus sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Report </span></a></li>
<li><a title="Line Charts" href="<%=request.getContextPath() %>/task/report/list"><i class="fa fa-list sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">List</span></a></li>
</ul>
</li>
<li><a title="Line Charts" href="<%=request.getContextPath() %>/task/user/Report"><i class="fa fa-list sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Report List</span></a></li>

	<%
}
%>
<li>
<a  href="<%=request.getContextPath()%>/logout">
<i class="fa big-icon fa-home icon-wrap"></i>
<span class="mini-click-non">Logout</span>
</a>

</li>
</ul>
</nav>
</div>
</nav>
</div>

