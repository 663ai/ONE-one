package com.lxl.jc.service.impl;

import java.util.ArrayList;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxl.jc.mapper.ManagerMapper;
import com.lxl.jc.pojo.Manager;
import com.lxl.jc.service.ManagerService;
@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
	
	private ManagerMapper managerMapper;
	@Resource(name="managerMapper")
	public void setManagerMapper(ManagerMapper managerMapper) {
		this.managerMapper = managerMapper;
	}
	
	public ArrayList<Manager> getAllManager(){
		return managerMapper.getAllManager();
	}

	public ArrayList<Manager> getLogin(String manager,String passwd) {
		return managerMapper.getLogin(manager,passwd);
	}

	
	
	
}
