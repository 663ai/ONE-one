package com.lxl.jc.pojo;

import java.util.Date;

public class Admin {
	private String apname;
	private String acname;
	private String astate;
	private Date atime;
	
	
	public Admin() {
	}
	
	public Admin(String apname, String acname, String astate, Date atime) {
		super();
		this.apname = apname;
		this.acname = acname;
		this.astate = astate;
		this.atime = atime;
	}

	public String getApname() {
		return apname;
	}
	public void setApname(String apname) {
		this.apname = apname;
	}
	public String getAcname() {
		return acname;
	}
	public void setAcname(String acname) {
		this.acname = acname;
	}
	public String getAstate() {
		return astate;
	}
	public void setAstate(String astate) {
		this.astate = astate;
	}
	public Date getAtime() {
		return atime;
	}
	public void setAtime(Date atime) {
		this.atime = atime;
	}
	
	
	
}
