package com.lxl.jc.controller;

import java.util.ArrayList;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.lxl.jc.pojo.Manager;
import com.lxl.jc.pojo.Vehi;
import com.lxl.jc.service.ManagerService;
import com.lxl.jc.service.VehiService;

@Controller
public class ManagerController {
	
	private ManagerService managerService;
	private String managername;
	private String passwd;
	private  VehiService vehiService;
	
	
	@Resource(name="managerService")
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	@Resource(name="vehiService")
	public void setVehiService(VehiService vehiService) {
		this.vehiService = vehiService;
	}
	
	public void setManagername(String managername) {
		this.managername = managername;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	@RequestMapping("login")
	private ModelAndView login(HttpServletRequest request){
		ModelAndView mv=null;
		String name=request.getParameter("managername");
		String pass=request.getParameter("passwd");
		try {
			mv = new ModelAndView("index");
			ArrayList<Manager> managers=managerService.getLogin(name, pass);
			ArrayList<Vehi> vevew=vehiService.getW();
			ArrayList<Vehi> veved=vehiService.getD();
			ArrayList<Vehi> vevex=vehiService.getX();
			if(managers.size()>0){
				mv.addObject("manager", managers.get(0).getManagername());
				mv.addObject("vevew", vevew.get(0));
				mv.addObject("veved", veved.get(0));
				System.out.println(vevew.get(0));
				mv.addObject("vevex", vevex.get(0));
			}else{
				mv = new ModelAndView("error");
				System.out.println("没有这样的用户");
			}
		} catch (Exception e) {
			mv = new ModelAndView("error");
			e.printStackTrace();
		}
		return mv;
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
}
