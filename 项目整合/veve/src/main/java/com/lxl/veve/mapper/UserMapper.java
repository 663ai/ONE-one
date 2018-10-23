package com.lxl.veve.mapper;

import java.util.ArrayList;
import org.springframework.stereotype.Repository;
import com.lxl.veve.pojo.UserInfo;

@Repository("userMapper")
public interface UserMapper {

	ArrayList<UserInfo> getAllUsers();
	
}
