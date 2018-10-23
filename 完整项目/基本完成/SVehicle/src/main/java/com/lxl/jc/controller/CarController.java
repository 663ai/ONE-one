package com.lxl.jc.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxl.jc.pojo.Car;
import com.lxl.jc.pojo.House;
import com.lxl.jc.pojo.Safe;
import com.lxl.jc.pojo.Staff;
import com.lxl.jc.pojo.Vehi;
import com.lxl.jc.service.AdService;
import com.lxl.jc.service.CarService;
import com.lxl.jc.service.HouseService;
import com.lxl.jc.service.ManagerService;
import com.lxl.jc.service.SafeService;
import com.lxl.jc.service.StaffService;
import com.lxl.jc.service.VehiService;

@Controller
public class CarController {
	
	private CarService carService;
	private VehiService vehiService;
	private AdService adService;
	private HouseService houseService;
	private SafeService safeService;
	private StaffService staffService;
	@Resource(name="staffService")
	public void setStaffService(StaffService staffService) {
		this.staffService = staffService;
	}
	@Resource(name="carService")
	public void setCarService(CarService carService) {
		this.carService = carService;
	}
	@Resource(name="vehiService")
	public void setVehiService(VehiService vehiService) {
		this.vehiService = vehiService;
	}
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
			//统计表一
			ArrayList<Vehi> vevew=vehiService.getW();
			ArrayList<Vehi> veved=vehiService.getD();
			ArrayList<Vehi> vevex=vehiService.getX();
			mv.addObject("vevew", vevew.get(0));
			mv.addObject("veved", veved.get(0));
			mv.addObject("vevex", vevex.get(0));
			//统计表一数据
			ArrayList<Vehi> cars=vehiService.cars();
			mv.addObject("cars", cars);
			//缴费统计信息
			ArrayList<House> fire=houseService.getfire();
			ArrayList<House> water=houseService.getwater();
			ArrayList<House> ele=houseService.getele();
			ArrayList<House> net=houseService.getnet();
			mv.addObject("fire", fire.get(0));
			mv.addObject("water", water.get(0));
			mv.addObject("ele", ele.get(0));
			mv.addObject("net", net.get(0));
			//five
			ArrayList<House> five=houseService.five();
			mv.addObject("five", five);
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
			//限制五条数据
			ArrayList<Safe> safelimit=safeService.limit();
			mv.addObject("safelimit", safelimit);
			//安保
			//数据
			ArrayList<Staff> limit=staffService.getlimit();
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
