package com.fxeie.crm.controller.reportmanagement;

import com.fxeie.crm.vo.DailyReportVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/reportManagement/daily")
public class DailyController {

    private static final String ROOT_PATH = "reportManagement/daily";

    @RequestMapping("/index")
    public String index() {
        return ROOT_PATH + "/index";
    }

    @RequestMapping("/list")
    @ResponseBody
    public Map<String, Object> list() {
        Calendar instance = Calendar.getInstance();
        Date date = getDate(instance);
        instance.setTime(date);
        int end = instance.getActualMaximum(Calendar.DAY_OF_MONTH);
        List<DailyReportVO> list = new ArrayList<>();
        for (int i = 1; i <= end; i++) {
            DailyReportVO vo = new DailyReportVO();
            if (i != 1) {
                instance.add(Calendar.DATE, 1);
            }
            vo.setBillDate(getDateStr(instance));
            vo.setCommision(BigDecimal.valueOf(10));
            list.add(vo);
        }
        Map<String, Object> result = new HashMap<>();
        result.put("total", list.size());
        result.put("rows", list);
        return result;
    }

    private Date getDate(Calendar instance) {
        Date time = instance.getTime();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = dateFormat.format(time);
        try {
            return dateFormat.parse(format);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    private String getDateStr(Calendar instance) {
        Date time = instance.getTime();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return dateFormat.format(time);
    }

}
