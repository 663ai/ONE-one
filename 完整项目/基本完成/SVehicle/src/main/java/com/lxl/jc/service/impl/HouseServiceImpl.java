package com.lxl.jc.service.impl;

import java.util.ArrayList;
import java.util.List;

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

	public List<House> getall(int page,int max) {
        System.out.println(page);
		int firstIndex = (page - 1) * max;
        int lastIndex=0;
        if(page * max >= houseMapper.getallcount()){
        	lastIndex = houseMapper.getallcount();
        }else{
        	lastIndex = page * max;
        }
        List<House> all=houseMapper.getall();
        return all.subList(firstIndex, lastIndex);
        
	}

	public int getallcount() {
		System.out.println(houseMapper.getallcount());
		return houseMapper.getallcount();
	}
	

	public ArrayList<House> five() {
		return houseMapper.five();
	}
}
