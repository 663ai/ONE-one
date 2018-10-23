package com.lxl.jc.service.impl;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.lxl.jc.mapper.AdMapper;
import com.lxl.jc.pojo.Admin;
import com.lxl.jc.service.AdService;
@Service("adService")
public class AdServiceImpl implements AdService {
	
	private AdMapper adMapper;
	@Resource(name="adMapper")
	public void setAdMapper(AdMapper adMapper) {
		this.adMapper = adMapper;
	}
	
	public ArrayList<Admin> getUser() {
		System.out.println("======================"+adMapper.getUser()+"======================");
		return adMapper.getUser();
	}
	
}
