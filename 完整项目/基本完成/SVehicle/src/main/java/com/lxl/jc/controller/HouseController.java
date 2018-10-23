package com.lxl.jc.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.lxl.jc.pojo.House;
import com.lxl.jc.service.HouseService;

@Controller
public class HouseController {
	int page;
	int max=12;
	private HouseService houseService;
	@Resource(name="houseService")
	public void setHouseService(HouseService houseService) {
		this.houseService = houseService;
	}
	public void setPage(int page) {
		this.page = page;
	}

	@RequestMapping("house")
	private ModelAndView house(HttpServletRequest request){
		ModelAndView mv=null;
		try {
			mv = new ModelAndView("table1");
			//È«Êý¾Ý
			if(request.getParameter("page")==null){
				page=1;
			}else{
				page=Integer.parseInt(request.getParameter("page"));
			}
			List<House> all=houseService.getall(page,max);
			int count=houseService.getallcount();
			int  maxpage=count/max;
			
			if(count%max>0){
				maxpage++;
			}
			mv.addObject("all",all);
			mv.addObject("maxpage",maxpage);
			mv.addObject("count",count);
			mv.addObject("page",page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	
}
