package com.lxl.jc.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxl.jc.mapper.HouseMapper;
import com.lxl.jc.pojo.House;
import com.lxl.jc.service.HouseService;

@Service("houseService")
public class HouseServiceImpl implements HouseService{
	
	private HouseMapper houseMapper;
	@Resource(name="houseMapper")
	public void setHouseMapper(HouseMapper houseMapper) {
		this.houseMapper = houseMapper;
	}

	public ArrayList<House> getwater() {
		return houseMapper.getwater();
	}

	public ArrayList<House> getfire() {
		return houseMapper.getfire();
	}

	public ArrayList<House> getele() {
		return houseMapper.getele();
	}

	public ArrayList<House> getnet() {
		return houseMapper.getnet();
	}
	
}
