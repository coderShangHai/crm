package com.fxeie.crm.controller.business;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fxeie.crm.model.PageResult;

@Controller
@RequestMapping("account")
public class AccountController {
	private String ROOT_PATH = "business/account/";
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index(){
		return ROOT_PATH + "index";
	}
	@RequestMapping(value="info",method=RequestMethod.GET)
	public String info(){
		return ROOT_PATH + "info";
	}
	@RequestMapping(value="bank",method=RequestMethod.POST)
	@ResponseBody
	public List<Map<String,Object>> bank(){
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("mainBank", "农业银行");
		map.put("branchBank", "巴彦淖尔市临河区沃野街 巴彦淖尔市临河区沃野街支行");
		map.put("name", "李细娇");
		map.put("account", "15646466565646456");
		list.add(map);
		return list;
	}
	@RequestMapping(value="money",method=RequestMethod.GET)
	public String money(){
		return ROOT_PATH + "money";
	}
	@RequestMapping(value="money",method=RequestMethod.POST)
	@ResponseBody
	public PageResult<Map<String,Object>> moneyPost(){
		PageResult<Map<String,Object>> page = new PageResult<Map<String,Object>>();
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		for(int i=0;i<10;i++){
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("time", new Date());
			map.put("order", "111111");
			map.put("type", "在线交易");
			map.put("money", 500);
			list.add(map);
		}
		page.setRows(list);
		page.setTotal(10);
		return page;
	}
	@RequestMapping(value="order",method=RequestMethod.GET)
	public String order(){
		return ROOT_PATH + "order";
	}
	@RequestMapping(value="order",method=RequestMethod.POST)
	@ResponseBody
	public PageResult<Map<String,Object>> orderPost(){
		PageResult<Map<String,Object>> page = new PageResult<Map<String,Object>>();
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		for(int i=0;i<10;i++){
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("time", new Date());
			map.put("order", "111111");
			map.put("type", "在线交易");
			map.put("money", 500);
			list.add(map);
		}
		page.setRows(list);
		page.setTotal(10);
		return page;
	}
}
