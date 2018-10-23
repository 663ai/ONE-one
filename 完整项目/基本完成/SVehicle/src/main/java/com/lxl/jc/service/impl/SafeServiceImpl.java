package com.lxl.jc.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxl.jc.mapper.SafeMapper;
import com.lxl.jc.pojo.Safe;
import com.lxl.jc.service.SafeService;

@Service("safeService")
public class SafeServiceImpl implements SafeService {
	private SafeMapper safeMapper;
	@Resource(name="safeMapper")
	public void setSafeMapper(SafeMapper safeMapper) {
		this.safeMapper = safeMapper;
	}

	public ArrayList<Safe> geta() {
		return safeMapper.geta();
	}

	public ArrayList<Safe> getb() {
		return safeMapper.getb();
	}

	public ArrayList<Safe> getc() {
		return safeMapper.getc();
	}

	public ArrayList<Safe> getd() {
		return safeMapper.getd();
	}

	public ArrayList<Safe> getaa() {
		return safeMapper.getaa();
	}

	public ArrayList<Safe> getbb() {
		return safeMapper.getbb();
	}

	public ArrayList<Safe> getcc() {
		return safeMapper.getcc();
	}

	public ArrayList<Safe> getdd() {
		return safeMapper.getdd();
	}

	public ArrayList<Safe> limit() {
		return safeMapper.limit();
	}
	
}
