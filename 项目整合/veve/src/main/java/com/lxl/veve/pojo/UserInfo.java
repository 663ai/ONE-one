package com.lxl.veve.pojo;

import java.io.Serializable;
import java.util.Date;

public class UserInfo implements Serializable {
	
	private int id;
	private String name;
	private Date birthday;
	private int age;
	private UserType type;
	
	public UserInfo(int id, String name, Date birthday, int age) {
		super();
		this.id = id;
		this.name = name;
		this.birthday = birthday;
		this.age = age;
	}
	
	public UserInfo() {
	}
	
	public UserType getType() {
		return type;
	}
	public void setType(UserType type) {
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
