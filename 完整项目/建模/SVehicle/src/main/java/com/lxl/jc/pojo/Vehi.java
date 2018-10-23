package com.lxl.jc.pojo;

import java.io.Serializable;

public class Vehi implements Serializable {
	
	private int veid; 
	private String venum;
	private String vebr;
	private String vemo;
	private String vecom;
	private String veh;
	private String vestate;
	private String vename;
	
	
	public Vehi() {
	}
	
	
	public Vehi(int veid, String venum, String vebr, String vemo, String vecom, String veh, String vestate,
			String vename) {
		super();
		this.veid = veid;
		this.venum = venum;
		this.vebr = vebr;
		this.vemo = vemo;
		this.vecom = vecom;
		this.veh = veh;
		this.vestate = vestate;
		this.vename = vename;
	}


	public int getVeid() {
		return veid;
	}
	public void setVeid(int veid) {
		this.veid = veid;
	}
	public String getVenum() {
		return venum;
	}
	public void setVenum(String venum) {
		this.venum = venum;
	}
	public String getVebr() {
		return vebr;
	}
	public void setVebr(String vebr) {
		this.vebr = vebr;
	}
	public String getVemo() {
		return vemo;
	}
	public void setVemo(String vemo) {
		this.vemo = vemo;
	}
	public String getVecom() {
		return vecom;
	}
	public void setVecom(String vecom) {
		this.vecom = vecom;
	}
	public String getVeh() {
		return veh;
	}
	public void setVeh(String veh) {
		this.veh = veh;
	}
	public String getVestate() {
		return vestate;
	}
	public void setVestate(String vestate) {
		this.vestate = vestate;
	}
	public String getVename() {
		return vename;
	}
	public void setVename(String vename) {
		this.vename = vename;
	}


	@Override
	public String toString() {
		return "Vehi [veid=" + veid + ", venum=" + venum + ", vebr=" + vebr + ", vemo=" + vemo + ", vecom=" + vecom
				+ ", veh=" + veh + ", vestate=" + vestate + ", vename=" + vename + "]";
	}
	
	
	
}
