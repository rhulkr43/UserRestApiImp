package com.project.Controller;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.project.ApiUtill.UrlUtill;
import com.project.Model.Task;
import com.project.Model.Token;
import com.project.Model.User;
import com.project.Service.TaskService;
import com.project.Service.UserServiceImpl;

@Controller
@RequestMapping("/task")
public class TaskController {
	
	@Autowired
	private TaskService taskService;
	@Autowired
	private UrlUtill urlUtill;
	@Autowired
	private UserServiceImpl userServiceImpl;
	 @Autowired
	 Token token;
	@Autowired
	private RestTemplate restTemplate;
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String task(Model mode,HttpSession session) {
		Task[] account=taskService.getAllList(session);
		mode.addAttribute("list",account);
		return "tasklist";
	}
	
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public String add(HttpSession session,Model model) {
		User[] account=userServiceImpl.ListUser(session);
		model.addAttribute("list",account);
		return "addtask";
	}
	@RequestMapping(value = "/add",method = RequestMethod.POST)
	public String save(HttpSession session,@RequestParam("user_id") String user_id,@RequestParam("title") String title,@RequestParam("comment") String comment) {
		Map<String, Object> map=new HashMap<>();
		map.put("user_id", Integer.parseInt(user_id));
		map.put("title", title);
		map.put("comment", comment);
		map.put("assigndate", LocalDate.now());
		HttpHeaders headers = new HttpHeaders();
		String t2="Bearer "+session.getAttribute("token");
		headers.add("Authorization",t2);
		HttpEntity<Map<String, Object>> request = new HttpEntity<Map<String, Object>>(map, headers);
		System.out.println(map);
		ResponseEntity<String> response = restTemplate.postForEntity(urlUtill.addtask, request, String.class);
		map.put("message", response.getBody());
	
		return "redirect:/task/";
	}

}
