package com.lxl.jc.pojo;

import java.io.Serializable;

public class Manager implements Serializable {
	
	private int managerid;
	private String managername;
	private String passwd;
	private String mstate;
	

	
	public Manager() {
		super();
	}
	
	public Manager(int managerid, String managername, String passwd,
			String mstate) {
		super();
		this.managerid = managerid;
		this.managername = managername;
		this.passwd = passwd;
		this.mstate = mstate;
	}

	public int getManagerid() {
		return managerid;
	}
	public void setManagerid(int managerid) {
		this.managerid = managerid;
	}
	public String getManagername() {
		return managername;
	}
	public void setManagername(String managername) {
		this.managername = managername;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getMstate() {
		return mstate;
	}
	public void setMstate(String mastate) {
		this.mstate = mastate;
	}
	public String toString() {
		return "Manager [managerid=" + managerid + ", managername="
				+ managername + ", mastate=" + mstate + ", passwd=" + passwd
				+ "]";
	}
}
