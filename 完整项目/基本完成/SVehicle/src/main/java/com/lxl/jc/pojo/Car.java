package com.lxl.jc.pojo;

import java.util.Date;

public class Car {
	private int cid;
	private int cnumber;
	private int cover;
	private Date ctime;
	
	
	public Car() {
	}
	public Car(int cid, int cnumber, int cover, Date ctime) {
		super();
		this.cid = cid;
		this.cnumber = cnumber;
		this.cover = cover;
		this.ctime = ctime;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getCnumber() {
		return cnumber;
	}
	public void setCnumber(int cnumber) {
		this.cnumber = cnumber;
	}
	public int getCover() {
		return cover;
	}
	public void setCover(int cover) {
		this.cover = cover;
	}
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	
	
}
