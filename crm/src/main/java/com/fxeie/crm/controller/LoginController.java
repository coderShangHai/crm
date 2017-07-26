package com.fxeie.crm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("")
public class LoginController {
	@RequestMapping(value={"/login",""},method=RequestMethod.GET)
	public String login(HttpServletRequest request){
		request.setAttribute("errorMsg", "");
		return "login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String userName,String password,HttpServletRequest request){
		if(userName.equals("admin")&&password.equals("admin")){
			return "redirect:/index";
		}else{
			request.setAttribute("errorMsg", "用户名或密码错误,登录失败");
			return "login";  
		}
	}
}
