package com.fxeie.crm.rest;

import com.fxeie.crm.dao.TestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestRest {


    @Autowired
    private TestDao testDao;

    @RequestMapping("/get")
    public String getTime() {
        return testDao.getTime();
    }

    @RequestMapping("/getCN")
    public String getCN() {
        return "中国";
    }
}
