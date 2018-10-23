package com.lxl.jc.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.lxl.jc.pojo.Manager;

public interface ManagerService {
	
	ArrayList<Manager> getAllManager();
	ArrayList<Manager> getLogin(@Param("managername")String managername,@Param("passwd")String passwd);
}
