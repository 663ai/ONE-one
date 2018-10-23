package com.lxl.jc.mapper;

import java.util.ArrayList;
import org.springframework.stereotype.Repository;
import com.lxl.jc.pojo.Admin;

@Repository("adMapper")
public interface AdMapper {
	
	ArrayList<Admin> getUser();
}
