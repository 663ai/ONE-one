package com.lxl.jc.controller;

import java.util.ArrayList;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.lxl.jc.pojo.Manager;
import com.lxl.jc.service.ManagerService;

@Controller
public class ManagerController {
	
	private ManagerService managerService;
	private String managername;
	private String passwd;
	@Resource(name="managerService")
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	public void setManagername(String managername) {
		this.managername = managername;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	
	@RequestMapping("background/showManagers")
	private ModelAndView showManager(){
		ModelAndView mv=null;
		try {
			mv = new ModelAndView("background/Manager");
			ArrayList<Manager> managers=managerService.getAllManager();
			mv.addObject("managers", managers);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("background/login")
	private ModelAndView login(HttpServletRequest request){
		ModelAndView mv=null;
		String name=request.getParameter("managername");
		String pass=request.getParameter("passwd");
		try {
			mv = new ModelAndView("background/index");
			ArrayList<Manager> managers=managerService.getLogin(name, pass);
			if(managers.size()>0){
				mv.addObject("manager", managers.get(0).getManagername());
			}else{
				System.out.println("没有这样的用户");
			}
		} catch (Exception e) {
			mv = new ModelAndView("background/error");
			e.printStackTrace();
		}
		return mv;
	}
	
}
