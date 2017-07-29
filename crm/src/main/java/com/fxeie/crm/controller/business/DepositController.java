package com.fxeie.crm.controller.business;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fxeie.crm.model.PageResult;

@Controller
@RequestMapping("deposit")
public class DepositController {
	private String ROOT_PATH = "business/deposit/";
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index(){
		return ROOT_PATH + "index";
	}
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public PageResult<Map<String,Object>> list(){
		PageResult<Map<String,Object>> page = new PageResult<Map<String,Object>>();
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		for(int i=0;i<10;i++){
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("account", "70161901"+i);
			map.put("beijingTime", "20:24:07");
			map.put("utc", "07:24:07");
			map.put("depositType", "在线支付");
			map.put("payBank", "建设银行");
			map.put("usd", "1000");
			map.put("cny", "6783.10");
			map.put("exchangeRate", "6.7831");
			map.put("name", "许静怡");
			map.put("phone", "13614568034");
			map.put("email", "393924215@qq.com");
			map.put("totalDeposit", 0);
			map.put("totalGold", 0);
			map.put("status", true);
			map.put("explain", "在线支付 实时到帐");
			list.add(map);
		}
		page.setRows(list);
		page.setTotal(10);
		return page;
	}
}
