package com.project.Controller;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.filters.AddDefaultCharsetFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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

import ch.qos.logback.classic.pattern.Util;


@Controller
public class HomeController {
	
	
	@Autowired
	private UrlUtill urlUtill;
	@Autowired
	private UserServiceImpl userServiceImpl;
	 @Autowired
	 Token token;
	@Autowired
	private RestTemplate restTemplate;
	@Autowired
	private TaskService taskService;
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String home(Model mode,HttpSession session) {
		System.out.println("session"+session);
		if(session.getAttribute("user")==null) {
			return "redirect:/login";
		}else {
			User[] account=userServiceImpl.ListUser(session);
			mode.addAttribute("list",account);
			return "index";
		}
		
		
		
	}
	@RequestMapping(value="/user",method = RequestMethod.GET)
	public String user(Model mode,HttpSession session) {
		
		
		return "user";
		
		
	}
	@RequestMapping(value="/user/list",method = RequestMethod.GET)
	public String userlist(Model mode,HttpSession session) {
		
		
		  
		   
		User[] account=userServiceImpl.ListUser(session);
		
		mode.addAttribute("list",account);
		return "userlist";
		
		
	}
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginsave(Model model,@RequestParam("username") String username,@RequestParam("password") String password,HttpSession session) {
		System.out.println(username+" "+password);
		Map<String, String> map=new HashMap<>();
		map.put("username", username);
		map.put("password", password);
		System.out.println(map);
		try {
			ResponseEntity<Token> data=restTemplate.postForEntity(urlUtill.gettoken, map, Token.class);
			HttpStatus statuString=data.getStatusCode();
			String  token=data.getBody().getToken();
		    this.token.setToken(token);
		    String t1="Bearer "+token;
		    HttpHeaders headers = new HttpHeaders();
			headers.add("Authorization",t1);
			HttpEntity<String> request = new HttpEntity<String>(headers);
		    ResponseEntity<User> response = restTemplate.exchange(urlUtill.getuserString+"/"+username, HttpMethod.GET, request, User.class);
			
			session.setAttribute("user", response.getBody());
		    session.setAttribute("token", token);
		    model.addAttribute("message", "User Login Successfull");
		    return "redirect:/";

		}catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message","invalid credentials");
			return "login";
		}
		
		
			
		
		
	}
	
	@RequestMapping(value="delete/{id}",method = RequestMethod.GET)
	public String delete(Model model,@PathVariable("id") Long id) {
		String t1="Bearer "+token.getToken();
		System.out.println("ID iod"+id);
		String t2="Bearer "+token.getToken();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization",t2);
		HttpEntity<String> request = new HttpEntity<String>(headers);
		ResponseEntity<String> response = restTemplate.exchange(urlUtill.deleteString+"/"+id, HttpMethod.DELETE, request, String.class);
		
		System.out.println(response);
		 model.addAttribute("message",response);
		 return "redirect:/";
	}
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public String adduser() {
		return "add";
	}
	@RequestMapping(value="/user/save",method = RequestMethod.POST)
	public String save(@RequestParam("username") String username,@RequestParam("email") String email,@RequestParam("password") String pasword,@RequestParam("roles") String roles ) {
		
		Map<String, String> map= new HashMap();
		map.put("username", username);
		map.put("email", email);
		map.put("password", pasword);
		map.put("roles", roles);
		String t2="Bearer "+token.getToken();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization",t2);
		HttpEntity<Map<String, String>> request = new HttpEntity<Map<String, String>>(map, headers);
System.out.println(map);
		ResponseEntity<String> response = restTemplate.postForEntity(urlUtill.save, request, String.class);
		map.put("message", response.getBody());
		return "redirect:/user/list";
	}
	@RequestMapping(value="/update",method = RequestMethod.POST)
	public String update(Model model,@RequestParam("id") long id,@RequestParam("username") String username,@RequestParam("email") String email,@RequestParam("password") String pasword,@RequestParam("roles") String roles ) {
		Map<String, String> map= new HashMap();
		map.put("id", ""+id);
		System.out.println(id);
		map.put("username", username);
		map.put("email", email);
		map.put("password", pasword);
		map.put("roles", roles);
		String t2="Bearer "+token.getToken();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization",t2);
		HttpEntity<Map<String, String>> request = new HttpEntity<Map<String, String>>(map, headers);
		
		ResponseEntity<String> response = restTemplate.exchange(urlUtill.update,HttpMethod.PUT, request, String.class);
		
		model.addAttribute("message",response.getBody());
		return "redirect:/";
	}
	@RequestMapping(value="/view/{id}",method = RequestMethod.GET)
	public String view(Model model,@PathVariable("id") Long id) {
		String t2="Bearer "+token.getToken();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization",t2);
		HttpEntity<String> request = new HttpEntity<String>(headers);

		ResponseEntity<User> response = restTemplate.exchange(urlUtill.viewString+"/"+id,HttpMethod.GET, request, User.class);
		User user=response.getBody();
		model.addAttribute("list", user);
		return "view";
	}
   @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
   public String edit(Model model,@PathVariable("id") Integer id) {
		String t2="Bearer "+token.getToken();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization",t2);
		HttpEntity<String> request = new HttpEntity<String>(headers);

		ResponseEntity<User> response = restTemplate.exchange(urlUtill.viewString+"/"+id,HttpMethod.GET, request, User.class);
		User user=response.getBody();
		model.addAttribute("list", user);
		Map<String, Object> uMap=new HashMap<>();
		
		uMap.put("list", uMap);
		model.addAttribute("list", user);
	   return "edit";
   }
   
   @RequestMapping(value = "user/task/pending",method = RequestMethod.GET)
   public String userTask(HttpSession session,Model model) {
	   
	   Task[] list=taskService.getAllListbyUserid(session);
	   model.addAttribute("list",list);
	   return "usertasklist";
   }
   @RequestMapping(value = "user/task/completed",method = RequestMethod.GET)
   public String completed() {
	   return "usertaskcompleted";
   }
   @RequestMapping("/logout")
   public String logout(HttpSession session) {
	   session.invalidate();
	   return "redirect:/login";
   }
}
