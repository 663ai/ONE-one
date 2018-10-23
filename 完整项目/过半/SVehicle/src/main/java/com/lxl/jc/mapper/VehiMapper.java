package com.lxl.jc.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;
import com.lxl.jc.pojo.Vehi;

@Repository("vehiMapper")
public interface VehiMapper {
	
	ArrayList<Vehi> getCount();
	ArrayList<Vehi> getW();
	ArrayList<Vehi> getD();
	ArrayList<Vehi> getX();
}
