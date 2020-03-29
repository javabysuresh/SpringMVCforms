package com.sureshit.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sureshit.bean.BasicConfigurations;
import com.sureshit.service.WelcomeSevice;

@RestController
public class WelcomeController {
	@Autowired
	BasicConfigurations configurations;
	@Autowired
	WelcomeSevice welcomeService;
	
	@GetMapping("/get")
	public String getMsg() {
		return welcomeService.welcome();
	}
	
	@GetMapping("/getCfg")
	public Map<String, Object> getConfig(){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("no",configurations.getNo());
		map.put("name", configurations.getName());
		return map;
	}
}
