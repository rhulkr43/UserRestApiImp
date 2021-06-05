package com.project.Service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.project.Model.User;

@Component
public interface UserService {
	
	public User getUser(String username,String password);
	public List<User> ListUser();
	public void deleteUser(Long id);
	public void Save(User user);
	public void Update(User user);

}
