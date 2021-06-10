package com.project.Model;

import java.time.LocalDate;
import java.util.List;

public class TaskAssign {
private Long id;
	
	private String subject;
	private LocalDate date;
	private Integer user_id;
	
	private String comment;
	
	private boolean isCompleted;
	
	private String startingtime;
	
	private String endingTime;
 
	private Task task;
	
	
	private User user;
	
	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public Task getTask() {
		return task;
	}
	
	

	public void setTasks(Task tasks) {
		this.task = tasks;
	}

	private Integer taskid;
	
	public Integer getTaskid() {
		return taskid;
	}

	public void setTaskid(Integer taskid) {
		this.taskid = taskid;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public boolean isCompleted() {
		return isCompleted;
	}

	public void setCompleted(boolean isCompleted) {
		this.isCompleted = isCompleted;
	}

	public String getStartingtime() {
		return startingtime;
	}

	public void setStartingtime(String startingtime) {
		this.startingtime = startingtime;
	}

	public String getEndingTime() {
		return endingTime;
	}

	public void setEndingTime(String endingTime) {
		this.endingTime = endingTime;
	}

	public TaskAssign() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TaskAssign(Long id, String subject, LocalDate date, Integer user_id, String comment, boolean isCompleted,
			String startingtime, String endingTime, Integer taskid) {
		super();
		this.id = id;
		this.subject = subject;
		this.date = date;
		this.user_id = user_id;
		this.comment = comment;
		this.isCompleted = isCompleted;
		this.startingtime = startingtime;
		this.endingTime = endingTime;
		this.taskid = taskid;
	}



}
