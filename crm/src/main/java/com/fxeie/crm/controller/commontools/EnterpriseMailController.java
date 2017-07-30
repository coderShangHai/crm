package com.fxeie.crm.controller.commontools;

import com.fxeie.crm.vo.MailVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/enterpriseMail")
public class EnterpriseMailController {

    private static final String ROOT_PATH = "commontools/enterprisemail";

    @RequestMapping("/index")
    public String enterpriseMail() {
        return ROOT_PATH + "/index";
    }

    @RequestMapping("/list")
    @ResponseBody
    public List<MailVO> list() {
        List<MailVO> result = new ArrayList<>();

        MailVO mailVO = new MailVO();

        return result;
    }


}
