package com.project.Model;

import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;
public class Task {
	
	
	private Long task_id;
	
	
	private String title;
	private String comment;
	private LocalDate assigndate;
	private boolean IsActive;
	private Integer user_id;
	
	private String attachment;
	
	
	List<TaskAssign> taskAssigns;
	
	public String getAttachment() {
		return attachment;
	}
	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<TaskAssign> getTaskAssigns() {
		return taskAssigns;
	}
	public void setTaskAssigns(List<TaskAssign> taskAssigns) {
		this.taskAssigns = taskAssigns;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public LocalDate getAssigndate() {
		return assigndate;
	}
	public void setAssigndate(LocalDate assigndate) {
		this.assigndate = assigndate;
	}
	public boolean isIsActive() {
		return IsActive;
	}
	public void setIsActive(boolean isActive) {
		IsActive = isActive;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	
	public Task(Long task_id, String title, String comment, LocalDate assigndate, boolean isActive, Integer user_id) {
		super();
		this.task_id = task_id;
		this.title = title;
		this.comment = comment;
		this.assigndate = assigndate;
		IsActive = isActive;
		this.user_id = user_id;
	}
	public Long getTask_id() {
		return task_id;
	}
	public void setTask_id(Long task_id) {
		this.task_id = task_id;
	}
	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}
