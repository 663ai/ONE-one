package com.xxgx.lxl.Spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Hello world!
 *
 */
public class App {
  public static void main(String[] args) {
    // 获取 classpath 中的 Beans.xml 到上下文 context
    // 此处即 /java_console_spring/src/main/java/Beans.xml
    ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
    // 获取在 Beans.xml 中定义的 id 为 helloWorld 的 bean
    HelloSpring obj = (HelloSpring) context.getBean("helloWorld");
    // 使用获得的 bean 的 getMessage 方法
    obj.getMessage();
    // 关闭上下文，防止内存泄漏
    ((ClassPathXmlApplicationContext) context).close();

  }
}