package com.lxl.jc.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxl.jc.pojo.Car;
import com.lxl.jc.service.CarService;

@Controller
public class CarController {
	
	private CarService carService;
	@Resource(name="carService")
	public void setCarService(CarService carService) {
		this.carService = carService;
	}
	
	@RequestMapping("static")
	public ModelAndView car(){
		ModelAndView mv=null;
		try {
			mv = new ModelAndView("static");
			//按时间查询，全查
			ArrayList<Car> make=carService.make();
			ArrayList<Car> news=carService.news();
			mv.addObject("make", make.get(0));
			mv.addObject("news", news.get(0));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	
}
