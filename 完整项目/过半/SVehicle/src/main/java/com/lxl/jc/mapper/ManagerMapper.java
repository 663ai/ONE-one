package com.lxl.jc.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.lxl.jc.pojo.Manager;

@Repository("managerMapper")
public interface ManagerMapper {
	
	ArrayList<Manager> getAllManager();
	ArrayList<Manager> getLogin(@Param("managername")String managername,@Param("passwd")String passwd);
}
