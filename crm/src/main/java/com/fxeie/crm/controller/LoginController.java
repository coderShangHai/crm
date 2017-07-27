package com.fxeie.crm.controller;

import com.fxeie.crm.shiro.SessionUtils;
import com.fxeie.crm.utils.EncryptUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    private static final Logger log = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = {"/login", ""}, method = RequestMethod.GET)
    public String login() {
        Subject currentUser = SecurityUtils.getSubject();
        if (currentUser.isAuthenticated()) {
            return "redirect:/index";
        }
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String userName, String password, HttpServletRequest request) {
        log.info("登录入参:" + userName + "   " + password);
        Subject currentUser = SecurityUtils.getSubject();
        log.info("当前验证状态：" + currentUser.isAuthenticated() + "");
        if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(userName, EncryptUtils.md5(password));
            try {
                currentUser.login(token);
                request.setAttribute("errorMsg", "");
                return "redirect:/index";
            } catch (UnknownAccountException uae) {
                request.setAttribute("errorMsg", SessionUtils.getSession("loginError"));
                SessionUtils.deleteSession("loginError");
                return "login";
            }
        }
        return "login";
    }
}
