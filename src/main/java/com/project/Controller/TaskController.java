package com.project.Controller;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;
import javax.swing.event.ListSelectionEvent;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.annotation.ObjectIdGenerators.StringIdGenerator;
import com.project.ApiUtill.UrlUtill;
import com.project.Model.Task;
import com.project.Model.TaskAssign;
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
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public String task(Model mode,HttpSession session) {
		Task[] account=taskService.getAllList(session);
		List<Task> list=Arrays.asList(account);
		
		mode.addAttribute("list",list);
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
	
		return "redirect:/task/list";
	}

	@RequestMapping(value = "/report",method = RequestMethod.GET)
	public String Report(HttpSession session,Model model) {
		Task[] list=taskService.getAllListbyUserid(session);
		
		model.addAttribute("list",list);
		return "report";
	}
	@RequestMapping(value = "/report/save",method = RequestMethod.POST)
	public String Reportsave(HttpSession session,@RequestParam("taskid") Long taskid,
			@RequestParam("subject") String subject,
			@RequestParam("comment") String comment,
			@RequestParam("startingtime") String startingtime,
			@RequestParam("ending_time") String ending_time,
			@RequestParam("status") boolean status
			)
	{
		System.out.println("taskid"+taskid);
		TaskAssign taskAssign=new TaskAssign();
		User user=(User)session.getAttribute("user");
		taskAssign.setUser_id(Integer.parseInt(""+user.getId()));
		taskAssign.setComment(comment);
		
		taskAssign.setDate(LocalDate.now());
		taskAssign.setEndingTime(ending_time);
		taskAssign.setStartingtime(startingtime);
		taskAssign.setSubject(subject);
		 taskAssign.setCompleted(status);
		 if(status) {
			 String changeString=taskService.getTaskAssiupdatet(session, taskid.intValue());
			 System.out.println(changeString);
		 }
		 System.out.println("Status id "+status);
		taskAssign.setTaskid(Integer.parseInt(""+taskid));
		String t2="Bearer "+session.getAttribute("token");
		Map<String, Object> map=taskService.saveTask(taskAssign, t2);
		
		return "redirect:/task/report";
	}
	@RequestMapping(value = "/report/list",method = RequestMethod.GET)
	public String Reportlist(HttpSession session,Model model) {
		
		User user=(User)session.getAttribute("user");
		if(user.getRoles().equals("Admin")) {
			TaskAssign[] lisTaskAssigns=taskService.getTaskAssignList(session);
			
			model.addAttribute("list",lisTaskAssigns);
		}else {
			TaskAssign[] lisTaskAssigns=taskService.getTaskAssignUserList(session, user.getId().intValue());
			
			model.addAttribute("list",lisTaskAssigns);
		}
		
		return "reportlist";
	}
	
	@RequestMapping(value = "/user/Report",method = RequestMethod.GET)
	public String adminTaskList(HttpSession session,Model model) {
			User user=(User)session.getAttribute("user");
		
		if(user.getRoles().equals("Admin")) {
			TaskAssign[] taskAssigns=taskService.getTaskAssignList(session);
			
			List<TaskAssign> list=Arrays.asList(taskAssigns);
			
			model.addAttribute("list",list);
		}else {
			TaskAssign[] taskAssigns1=taskService.getTaskAssignUserList(session, user.getId().intValue());
			List<TaskAssign> list2=Arrays.asList(taskAssigns1);
			
			list2.stream().filter(x->x.getUser_id().equals(user.getId().intValue())).collect(Collectors.toList());
			model.addAttribute("list",list2);
		}
		
		
		return "admintaskList";
	}
}
