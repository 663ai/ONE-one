package com.lxl.test;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.lxl.user.User;

public class UserTest {
	
	public static void main(String[] args){
        //mybatisµÄÅäÖÃÎÄ¼þ
        String resource = "config.xml";
        InputStream is = UserTest.class.getClassLoader().getResourceAsStream(resource);
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
        SqlSession session = sessionFactory.openSession();
        String statement = "com.lxl.mapper.userMapper.User";
        List<User> user = session.selectList(statement);
        for (User user2 : user) {
        	System.out.println(user2);
		}
        


    }
}
