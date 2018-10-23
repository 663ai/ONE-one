package com.lxl.jc.service.impl;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.lxl.jc.mapper.StaffMapper;
import com.lxl.jc.pojo.Staff;
import com.lxl.jc.service.StaffService;

@Service("staffService")
public class StaffServiceImpl implements StaffService {
	private StaffMapper staffMapper;
	@Resource(name="staffMapper")
	public void setStaffMapper(StaffMapper staffMapper) {
		this.staffMapper = staffMapper;
	}

	public ArrayList<Staff> getlimit() {
		return staffMapper.getlimit();
	}

	public ArrayList<Staff> getall() {
		return staffMapper.getall();
	}

	public ArrayList<Staff> getD() {
		return staffMapper.getD();
	}

	public ArrayList<Staff> getX() {
		return staffMapper.getX();
	}

	public ArrayList<Staff> getW() {
		return staffMapper.getW();
	}

}
