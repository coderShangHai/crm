package com.fxeie.crm.controller.commontools;

import com.fxeie.crm.vo.MailVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String, Object> list() {
        List<MailVO> list = new ArrayList<>();

        MailVO mailVO = new MailVO();
        mailVO.setId(1);
        mailVO.setSendDate("2017-07-31");
        mailVO.setSendTime("02:00:00");
        mailVO.setNature("性质");
        mailVO.setSendResult("发送结果");
        mailVO.setExplain("说明");
        mailVO.setReceiveMailbox("1009042136@qq.com");
        mailVO.setAccount("1009042136@qq.com");
        mailVO.setRecipients("zhp");
        mailVO.setTitle("标题");
        list.add(mailVO);

        MailVO mailVO2 = new MailVO();
        mailVO2.setId(2);
        mailVO2.setSendDate("2017-07-31");
        mailVO2.setSendTime("02:01:00");
        mailVO2.setNature("性质");
        mailVO2.setSendResult("发送结果");
        mailVO2.setExplain("说明");
        mailVO2.setReceiveMailbox("1009042136@qq.com");
        mailVO2.setAccount("1009042136@qq.com");
        mailVO2.setRecipients("zhp");
        mailVO2.setTitle("标题");
        list.add(mailVO2);


        MailVO mailVO3 = new MailVO();
        mailVO3.setId(3);
        mailVO3.setSendDate("2017-07-30");
        mailVO3.setSendTime("08:00:00");
        mailVO3.setNature("性质");
        mailVO3.setSendResult("发送结果");
        mailVO3.setExplain("说明");
        mailVO3.setReceiveMailbox("1009042136@qq.com");
        mailVO3.setAccount("1009042136@qq.com");
        mailVO3.setRecipients("zhp");
        mailVO3.setTitle("标题");
        list.add(mailVO3);

        MailVO mailVO4 = new MailVO();
        mailVO4.setId(4);
        mailVO4.setSendDate("2017-07-30");
        mailVO4.setSendTime("09:01:00");
        mailVO4.setNature("性质");
        mailVO4.setSendResult("发送结果");
        mailVO4.setExplain("说明");
        mailVO4.setReceiveMailbox("1009042136@qq.com");
        mailVO4.setAccount("1009042136@qq.com");
        mailVO4.setRecipients("zhp");
        mailVO4.setTitle("标题");
        list.add(mailVO4);




        Map<String, Object> result = new HashMap<>();
        result.put("total", 20);
        result.put("rows", list);
        return result;
    }


}
