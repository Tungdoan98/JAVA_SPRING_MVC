package com.journaldev.spring.model;

public class SinhVien {
	private String msv;
	private String name;
	private String className;
	private int age;
	private int id;
	
	public SinhVien(String msv, String name, String className, int age, int id) {
		super();
		this.msv = msv;
		this.name = name;
		this.className = className;
		this.age = age;
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMsv() {
		return msv;
	}
	public void setMsv(String msv) {
		this.msv = msv;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	

}
