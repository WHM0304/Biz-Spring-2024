package com.callor.hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping(value="/user")
public class UserController {

	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join() {
		return null;
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(String u_name , String u_password) {
		log.debug("회원가입정보 {} , {}" , u_name, u_password);
		return null;
	}
	
	
	
	
	
	@RequestMapping(value="login" , method=RequestMethod.GET)
	public String login() {
		return null;
	}
	
	
}
