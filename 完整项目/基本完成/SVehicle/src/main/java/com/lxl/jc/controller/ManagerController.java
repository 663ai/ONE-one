package com.lxl.jc.controller;

import java.util.ArrayList;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxl.jc.pojo.Admin;
import com.lxl.jc.pojo.House;
import com.lxl.jc.pojo.Manager;
import com.lxl.jc.pojo.Safe;
import com.lxl.jc.pojo.Vehi;
import com.lxl.jc.service.AdService;
import com.lxl.jc.service.HouseService;
import com.lxl.jc.service.ManagerService;
import com.lxl.jc.service.SafeService;
import com.lxl.jc.service.VehiService;

@Controller
public class ManagerController {
	
	private ManagerService managerService;
	private String managername;
	private String passwd;
	private VehiService vehiService;
	private AdService adService;
	private HouseService houseService;
	private SafeService safeService;
	
	@Resource(name="safeService")
	public void setSafeService(SafeService safeService) {
		this.safeService = safeService;
	}
	@Resource(name="houseService")
	public void setHouseService(HouseService houseService) {
		this.houseService = houseService;
	}
	@Resource(name="adService")
	public void setAdService(AdService adService) {
		this.adService = adService;
	}
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
			managerService.getLogin(name, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return index();
	}

	@RequestMapping("index")
	private ModelAndView index(){
		ModelAndView mv=null;
		try {
			mv = new ModelAndView("index");
			//车辆类型统计
			ArrayList<Vehi> vehiCount=vehiService.getCount();
			ArrayList<Vehi> vevew=vehiService.getW();
			ArrayList<Vehi> veved=vehiService.getD();
			ArrayList<Vehi> vevex=vehiService.getX();
			mv.addObject("vehiCount", vehiCount.get(0));
			mv.addObject("vevew", vevew.get(0));
			mv.addObject("veved", veved.get(0));
			mv.addObject("vevex", vevex.get(0));
			//查询管理员
			ArrayList<Admin> apname=adService.getUser();
			mv.addObject("apname", apname.get(0).getApname());
			mv.addObject("adstate", apname.get(0).getAstate());
			//缴费统计信息
			ArrayList<House> fire=houseService.getfire();
			ArrayList<House> water=houseService.getwater();
			ArrayList<House> ele=houseService.getele();
			ArrayList<House> net=houseService.getnet();
			mv.addObject("fire", fire.get(0));
			mv.addObject("water", water.get(0));
			mv.addObject("ele", ele.get(0));
			mv.addObject("net", net.get(0));
			//网关状态
			ArrayList<Safe> a=safeService.geta();
			ArrayList<Safe> b=safeService.getb();
			ArrayList<Safe> c=safeService.getc();
			ArrayList<Safe> d=safeService.getd();
			ArrayList<Safe> aa=safeService.getaa();
			ArrayList<Safe> bb=safeService.getbb();
			ArrayList<Safe> cc=safeService.getcc();
			ArrayList<Safe> dd=safeService.getdd();
			mv.addObject("a", a.get(0));
			mv.addObject("b", b.get(0));
			mv.addObject("c", c.get(0));
			mv.addObject("d", d.get(0));
			mv.addObject("aa", aa.get(0));
			mv.addObject("bb", bb.get(0));
			mv.addObject("cc", cc.get(0));
			mv.addObject("dd", dd.get(0));
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
