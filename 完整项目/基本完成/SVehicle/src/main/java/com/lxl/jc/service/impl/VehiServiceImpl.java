package com.lxl.jc.service.impl;


import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.lxl.jc.mapper.VehiMapper;
import com.lxl.jc.pojo.Car;
import com.lxl.jc.pojo.Vehi;
import com.lxl.jc.service.VehiService;

@Service("vehiService")
public class VehiServiceImpl implements VehiService {
	
	private  VehiMapper vehiMapper;
	@Resource(name="vehiMapper")
	public void setVehiMapper(VehiMapper vehiMapper) {
		this.vehiMapper = vehiMapper;
	}
	
	public ArrayList<Vehi> getX(){
		System.out.println("======================"+vehiMapper.getX()+"======================");
		return vehiMapper.getX();
	}
	public ArrayList<Vehi> getW(){
		System.out.println("======================"+vehiMapper.getW()+"======================");
		return vehiMapper.getW();
	}
	public ArrayList<Vehi> getD(){
		System.out.println("======================"+vehiMapper.getD()+"======================");
		return vehiMapper.getD();
	}

	public ArrayList<Vehi> getCount() {
		return vehiMapper.getCount();
	}
	public ArrayList<Vehi> cars() {
		return vehiMapper.cars();
	}
}
