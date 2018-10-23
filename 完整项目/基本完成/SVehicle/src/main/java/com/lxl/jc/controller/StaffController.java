package com.lxl.jc.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxl.jc.pojo.Manager;
import com.lxl.jc.pojo.Staff;
import com.lxl.jc.service.StaffService;

@Controller
public class StaffController {
	
	private StaffService staffService;
	@Resource(name="staffService")
	public void setStaffService(StaffService staffService) {
		this.staffService = staffService;
	}
	
	@RequestMapping("map")
	public ModelAndView map(){
		ModelAndView mv=null;
		try {
			mv = new ModelAndView("map");
			//按时间查询，全查
			ArrayList<Staff> all=staffService.getall();
			ArrayList<Staff> limit=staffService.getlimit();
			mv.addObject("all", all);
			mv.addObject("limit", limit);
			//数
			ArrayList<Staff> D=staffService.getD();
			ArrayList<Staff> X=staffService.getX();
			ArrayList<Staff> W=staffService.getW();
			mv.addObject("D", D.get(0));
			mv.addObject("X", X.get(0));
			mv.addObject("W", W.get(0));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	
}
