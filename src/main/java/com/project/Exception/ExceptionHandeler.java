package com.project.Exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;

@ControllerAdvice
public class ExceptionHandeler {
	 
	@RequestMapping("/")
	  public void handleRequest() {
	      throw new RuntimeException("test exception");
	  }
}
