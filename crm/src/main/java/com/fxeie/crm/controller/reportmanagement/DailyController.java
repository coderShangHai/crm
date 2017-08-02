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
        instance.set(Calendar.DATE, 1);
        int end = instance.getActualMaximum(Calendar.DAY_OF_MONTH);
        List<DailyReportVO> list = new ArrayList<>();
        BigDecimal totalInGlod = BigDecimal.ZERO;
        BigDecimal totalOutGlod = BigDecimal.ZERO;
        BigDecimal totalNettedGlod = BigDecimal.ZERO;
        BigDecimal totalVolume = BigDecimal.ZERO;
        BigDecimal totalProfit = BigDecimal.ZERO;
        BigDecimal totalCommision = BigDecimal.ZERO;
        for (int i = 1; i <= end; i++) {
            DailyReportVO vo = new DailyReportVO();
            if (i != 1) {
                instance.add(Calendar.DATE, 1);
            }
            vo.setBillDate(getDateStr(instance));
            vo.setInGlod(BigDecimal.valueOf(new Random().nextInt() * 1000));
            vo.setOutGlod(BigDecimal.valueOf(new Random().nextInt() * 1000));
            vo.setNettedGlod(vo.getInGlod().subtract(vo.getOutGlod()));
            vo.setVolume(BigDecimal.valueOf(new Random().nextInt(1000)));
            vo.setProfit(BigDecimal.valueOf(new Random().nextInt(1000)));
            vo.setCommision(BigDecimal.valueOf(new Random().nextInt(10)));
            list.add(vo);

            totalInGlod = totalInGlod.add(vo.getInGlod());
            totalOutGlod = totalOutGlod.add(vo.getOutGlod());
            totalNettedGlod = totalNettedGlod.add(vo.getNettedGlod());
            totalVolume = totalVolume.add(vo.getVolume());
            totalProfit = totalProfit.add(vo.getProfit());
            totalCommision = totalCommision.add(vo.getCommision());

        }
        Map<String, Object> footer = new HashMap<>();
        footer.put("inGlod", totalInGlod);
        footer.put("outGlod", totalOutGlod);
        footer.put("nettedGlod", totalNettedGlod);
        footer.put("volume", totalVolume);
        footer.put("profit", totalProfit);
        footer.put("commision", totalCommision);

        Map<String, Object> result = new HashMap<>();
        result.put("total", list.size());
        result.put("rows", list);
        result.put("footer", Arrays.asList(footer));
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
