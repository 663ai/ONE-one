package com.lxl.jc.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class uploadController {
	
	@RequestMapping("uploadFile")
	public ModelAndView uploadFile(MultipartFile file) throws Exception{
		ModelAndView mv=null;
		
		try{
			String fileName= file.getOriginalFilename();
			String name=file.getName();
			System.out.println("name="+name);
			System.out.println("fileName="+fileName);
			String random=UUID.randomUUID().toString();
			int index=fileName.lastIndexOf(".");
			String exet=fileName.substring(index);
			Date date =new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
			String dateStr=sdf.format(date);
			String filePath="C:\\Users\\Administrator\\Desktop\\"+dateStr;
			File file1 =new File(filePath);
			if(!file1.exists()){
				file1.mkdir();
			}
			filePath+="\\" + random+ exet;
			file.transferTo(new File(filePath));
			System.out.println("C:\\Users\\Administrator\\Desktop\\"+dateStr+"\\"+random+ exet);
			mv = new ModelAndView("upload");
		}
		catch(Exception  e){
			mv = new ModelAndView("error");
			e.printStackTrace();
		}
		return mv;	
	}
}
