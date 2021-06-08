package com.project.Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.project.ApiUtill.UrlUtill;
import com.project.Model.Task;
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
}
