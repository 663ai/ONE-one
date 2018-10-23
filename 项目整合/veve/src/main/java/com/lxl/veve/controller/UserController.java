package com.lxl.veve.controller;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.lxl.veve.pojo.UserInfo;
import com.lxl.veve.service.UserService;

@Controller
public class UserController {
	private UserService userService;
	
	@Resource(name="userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("/showUsers")
	public ModelAndView showUsers(){
		ModelAndView mv = null;
		try {
			mv = new ModelAndView("show");
			ArrayList<UserInfo> users=userService.getAllUsers();
			mv.addObject("data", users);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
		
	}
}
