package com.fxeie.crm.controller;

import com.fxeie.crm.dao.TestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

    @Autowired
    private TestDao testDao;

    @RequestMapping("/testView")
    public ModelAndView test() {
        ModelAndView modelAndView = new ModelAndView("Test");
        modelAndView.addObject("time", testDao.getTime());
        return modelAndView;
    }
}
