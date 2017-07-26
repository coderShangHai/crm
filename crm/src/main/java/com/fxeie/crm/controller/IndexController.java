package com.fxeie.crm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fxeie.crm.shiro.SessionUtils;

@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index() {
    	if(SessionUtils.isLogin()){
			return "index";
		}
		return "redirect:/login";
    }
}
