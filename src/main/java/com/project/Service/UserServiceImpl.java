package com.project.Service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.project.ApiUtill.UrlUtill;
import com.project.Model.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UrlUtill urlutill;
	
	
	@Autowired
	RestTemplate restTemplate;
	
	@Override
	public User getUser(String username,String password) {
		// TODO Auto-generated method stub
		
	      return null;
	 	
	}

	@Override
	public List<User> ListUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void Save(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void Update(User user) {
		// TODO Auto-generated method stub
		
	}
	
	

}
