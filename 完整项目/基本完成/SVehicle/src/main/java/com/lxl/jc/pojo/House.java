package com.lxl.jc.pojo;

import java.util.Date;

public class House {
	private int hid;
	private int hnumber;
	private String hname;
	private String hphone;
	private String hwater;
	private String hfire;
	private String hnet;
	private String hcar;
	private String hcost;
	private String hele;
	private Date htime;
	
	
	public House() {
		super();
		// TODO Auto-generated constructor stub
	}
	public House(int hid, int hnumber, String hname, String hphone, String hwater, String hfire, String hnet,
			String hcar, String hcost, String hele, Date htime) {
		super();
		this.hid = hid;
		this.hnumber = hnumber;
		this.hname = hname;
		this.hphone = hphone;
		this.hwater = hwater;
		this.hfire = hfire;
		this.hnet = hnet;
		this.hcar = hcar;
		this.hcost = hcost;
		this.hele = hele;
		this.htime = htime;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public int getHnumber() {
		return hnumber;
	}
	public void setHnumber(int hnumber) {
		this.hnumber = hnumber;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getHphone() {
		return hphone;
	}
	public void setHphone(String hphone) {
		this.hphone = hphone;
	}
	public String getHwater() {
		return hwater;
	}
	public void setHwater(String hwater) {
		this.hwater = hwater;
	}
	public String getHfire() {
		return hfire;
	}
	public void setHfire(String hfire) {
		this.hfire = hfire;
	}
	public String getHnet() {
		return hnet;
	}
	public void setHnet(String hnet) {
		this.hnet = hnet;
	}
	public String getHcar() {
		return hcar;
	}
	public void setHcar(String hcar) {
		this.hcar = hcar;
	}
	public String getHcost() {
		return hcost;
	}
	public void setHcost(String hcost) {
		this.hcost = hcost;
	}
	public String getHele() {
		return hele;
	}
	public void setHele(String hele) {
		this.hele = hele;
	}
	public Date getHtime() {
		return htime;
	}
	public void setHtime(Date htime) {
		this.htime = htime;
	}
	
	
}
