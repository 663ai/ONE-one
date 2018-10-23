package com.lxl.jc.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxl.jc.mapper.CarMapper;
import com.lxl.jc.pojo.Car;
import com.lxl.jc.pojo.House;
import com.lxl.jc.service.CarService;

@Service("carService")
public class CarServiceImpl implements CarService {
	
	private CarMapper carMapper;
	@Resource(name="carMapper")
	public void setCarMapper(CarMapper carMapper) {
		this.carMapper = carMapper;
	}

	public ArrayList<Car> make() {
		System.out.println(carMapper.make());
		return carMapper.make();
	}

	public ArrayList<Car> news() {
		System.out.println(carMapper.news());
		return carMapper.news();
	}




}
