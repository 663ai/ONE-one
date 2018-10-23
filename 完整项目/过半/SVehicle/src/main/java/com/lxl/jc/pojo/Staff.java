package com.lxl.jc.pojo;

import java.util.Date;

public class Staff {
	private int sid;
	private int sphone;
	private Date stime;
	private String sname;
	private String sage;
	private String ssex;
	private String slong;
	public Staff(int sid, int sphone, Date stime, String sname, String sage, String ssex,String slong) {
		super();
		this.sid = sid;
		this.sphone = sphone;
		this.stime = stime;
		this.sname = sname;
		this.sage = sage;
		this.ssex = ssex;
		this.slong=slong;
	}
	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getSlong() {
		return slong;
	}
	public void setSlong(String slong) {
		this.slong = slong;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getSphone() {
		return sphone;
	}
	public void setSphone(int sphone) {
		this.sphone = sphone;
	}
	public Date getStime() {
		return stime;
	}
	public void setStime(Date stime) {
		this.stime = stime;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSage() {
		return sage;
	}
	public void setSage(String sage) {
		this.sage = sage;
	}
	public String getSsex() {
		return ssex;
	}
	public void setSsex(String ssex) {
		this.ssex = ssex;
	}
	
}
