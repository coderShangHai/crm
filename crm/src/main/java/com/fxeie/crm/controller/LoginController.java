package com.fxeie.crm.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fxeie.crm.shiro.SessionUtils;
import com.fxeie.crm.utils.EncryptUtils;

@Controller("")
public class LoginController {
	@RequestMapping(value={"/login",""},method=RequestMethod.GET)
	public String login(HttpServletRequest request){
		request.setAttribute("errorMsg", "");
		return "login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String userName,String password,HttpServletRequest request){
		System.out.println("控制器里面:"+userName+"   "+password);
		Subject currentUser = SecurityUtils.getSubject();
		System.out.println(currentUser.isAuthenticated());
		if(!currentUser.isAuthenticated()){
			UsernamePasswordToken token = new UsernamePasswordToken(userName,EncryptUtils.md5(password));
			try {  
                currentUser.login(token); 
                request.setAttribute("errorMsg", "");
                return "redirect:/index";
            } catch (UnknownAccountException uae) { 
            	request.setAttribute("errorMsg", SessionUtils.getSession("loginError"));
            	SessionUtils.deleteSession("loginError");;
                return "login";  
            }finally{
            }
		}
		return "login";
	}
}
