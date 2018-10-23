package com.lxl.jc.pojo;

import java.util.Date;

public class Power {
	private int id;
	private String water;
	private String fire;
	private String ele;
	private String net;
	private Date time;
	
	
	public Power(int id, String water, String fire, String ele, String net, Date time) {
		super();
		this.id = id;
		this.water = water;
		this.fire = fire;
		this.ele = ele;
		this.net = net;
		this.time = time;
	}
	public Power() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWater() {
		return water;
	}
	public void setWater(String water) {
		this.water = water;
	}
	public String getFire() {
		return fire;
	}
	public void setFire(String fire) {
		this.fire = fire;
	}
	public String getEle() {
		return ele;
	}
	public void setEle(String ele) {
		this.ele = ele;
	}
	public String getNet() {
		return net;
	}
	public void setNet(String net) {
		this.net = net;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
	
}
