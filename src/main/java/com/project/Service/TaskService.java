package com.project.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.project.ApiUtill.UrlUtill;
import com.project.Model.Task;
import com.project.Model.TaskAssign;
import com.project.Model.Token;
import com.project.Model.User;

@Service
public class TaskService {
	 @Autowired
	 Token token;
	 @Autowired
		private RestTemplate restTemplate;
	 @Autowired
		private UrlUtill urlUtill;
	 
	
	public Task[] getAllList(HttpSession session) {
		User user=(User) session.getAttribute("user");
		System.out.println(user.getRoles());
		String t1="Bearer "+session.getAttribute("token");
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization",t1);
		HttpEntity<String> request = new HttpEntity<String>(headers);
		ResponseEntity<Task[]> response = restTemplate.exchange(urlUtill.listtaskString, HttpMethod.GET, request, Task[].class);
		Task[] account = response.getBody();
		return account;
		
	}
	public Task[] getAllListbyUserid(HttpSession session) {
		User user=(User) session.getAttribute("user");
		String t1="Bearer "+session.getAttribute("token");
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization",t1);
		HttpEntity<String> request = new HttpEntity<String>(headers);
		ResponseEntity<Task[]> response = restTemplate.exchange(urlUtill.getTaskByUseridString+"/"+user.getId(), HttpMethod.GET, request, Task[].class);
		Task[] account = response.getBody();
		
		return account;
		
	}
	
	public Map<String, Object> saveTask(TaskAssign taskAssign,String t1)
	{
			HttpHeaders headers = new HttpHeaders();
			headers.add("Authorization",t1);
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("user_id", ""+taskAssign.getUser_id());
			map.put("taskid", ""+taskAssign.getTaskid());
			map.put("subject", taskAssign.getSubject());
			map.put("endingTime", taskAssign.getEndingTime());
			map.put("startingtime", taskAssign.getStartingtime());
			map.put("is_completed", "false");
			map.put("ending_time", taskAssign.getEndingTime());
			map.put("date", ""+LocalDate.now());
			map.put("comment", taskAssign.getComment());
			HttpEntity<Map<String, Object>> request = new HttpEntity<Map<String, Object>>(map, headers);
			
		    ResponseEntity<TaskAssign> response = restTemplate.exchange(urlUtill.taskassignsaveString, HttpMethod.POST, request, TaskAssign.class);
			Map<String,Object> map2=new HashMap<>();
			map.put("message", "Task Submited");
			return map;
	}
	
	public TaskAssign[] getTaskAssignList(HttpSession session) {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization","Bearer "+session.getAttribute("token"));
		HttpEntity<String> request = new HttpEntity<String>(headers);
		
	    ResponseEntity<TaskAssign[]> response = restTemplate.exchange(urlUtill.taskAssignLiString, HttpMethod.GET, request, TaskAssign[].class);
	    TaskAssign[] resAssigns= response.getBody();
		return resAssigns;
	}

}
