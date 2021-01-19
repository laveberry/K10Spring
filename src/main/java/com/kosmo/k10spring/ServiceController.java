package com.kosmo.k10spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import component.scan.MyService;

@Controller
public class ServiceController {
	
	//서비스 객체를 자동주입 받는다.
//	@Autowired //여기다 붙여도됨!
	MyService myService;
	
	@Autowired
	public void setMyService(MyService myService) {
		this.myService = myService;
		System.out.println("setMyService()호출 - ServiceController");
		//@Service를 붙엿기에 자동으로 주입받을수 있다..?
	}
	
	@RequestMapping("/service/myService.do")
	public String myService() {
		myService.execute();
		return "07Service/myService";
	}
}
