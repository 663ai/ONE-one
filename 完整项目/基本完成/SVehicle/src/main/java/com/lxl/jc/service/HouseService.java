package com.lxl.jc.service;

import java.util.ArrayList;
import java.util.List;

import com.lxl.jc.pojo.House;

public interface HouseService {
	ArrayList<House> getwater();
	ArrayList<House> getfire();
	ArrayList<House> getele();
	ArrayList<House> getnet();
	List<House> getall(int page,int max);
	int getallcount();
	ArrayList<House> five();
}
