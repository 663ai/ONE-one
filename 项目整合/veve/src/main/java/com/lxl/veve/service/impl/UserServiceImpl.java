package com.lxl.veve.service.impl;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.lxl.veve.mapper.UserMapper;
import com.lxl.veve.pojo.UserInfo;
import com.lxl.veve.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	private UserMapper userMapper;
	@Resource(name="userMapper")
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	public ArrayList<UserInfo> getAllUsers() {
		return userMapper.getAllUsers();
	}

}
