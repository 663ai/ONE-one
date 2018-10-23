package com.lxl.user;

public class User {
	
	private int user;
	private String pass;
	


	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "User [ÓÃ»§£º" + user + ", ÃÜÂë£º" + pass + "]";
	}
	
}
