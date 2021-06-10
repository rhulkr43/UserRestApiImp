package com.project.ApiUtill;

import org.springframework.stereotype.Component;

@Component
public class UrlUtill {
	
	public static String  baseurl="http://localhost:9092/";
	
	public static String gettoken=baseurl+"/token";
	
	public static String getuserlist=baseurl+"/user/list";
	
	public static String deleteString=baseurl+"/user/delete";
	public static String viewString=baseurl+"/user/view/";
	public static String save=baseurl+"/user/save";
	public static String update=baseurl+"/user/update";
	public static String getuserString=baseurl+"/user/getUser";
	
	
	//Task Link
	
	public static String listtaskString=baseurl+"/task/list";
	public static String addtask=baseurl+"/task/add";
	
	public static String getTaskByUseridString=baseurl+"/task/listbyUserid";
	
	public static String taskassignsaveString=baseurl+"/task/taskassign/save";
	
	public static String taskAssignLiString=baseurl+"/task/taskassignlist";
	public static String taskAssignLiStringuserid=baseurl+"/task/taskassignlist";
	public static String userdashboardString=baseurl+"/task/dashboard/user";
	
	
	public static String updatetaskstatuString=baseurl+"/task/taskupdate/";
}
