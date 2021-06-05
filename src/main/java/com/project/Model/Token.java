package com.project.Model;

import org.springframework.stereotype.Component;

@Component
public class Token {
	
	private String token;

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Token() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Token(String token) {
		super();
		this.token = token;
	}
	
	

}
