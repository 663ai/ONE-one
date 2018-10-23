package com.lxl.jc.mapper;

import java.util.ArrayList;
import java.util.List;

import com.lxl.jc.pojo.House;

public interface HouseMapper {
	ArrayList<House> getwater();
	ArrayList<House> getfire();
	ArrayList<House> getele();
	ArrayList<House> getnet();
	List<House> getall();
	int getallcount();
	ArrayList<House> five();
}
