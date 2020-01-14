package com.journaldev.spring.model;

public class User {
	private String userName;
	private String location;
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public User(String userName, String location) {
		super();
		this.userName = userName;
		this.location = location;
	}

	public User() {
		super();
	}
	
}