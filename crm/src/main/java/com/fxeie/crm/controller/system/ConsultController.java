package com.fxeie.crm.controller.system;

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
@RequestMapping("consult")
public class ConsultController {
	private String ROOT_PATH = "system/consult/";
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
			map.put("consultDate", new Date());
			map.put("nickName", "测试用户:"+i);
			map.put("question", "你是谁呀:"+i);
			map.put("content", "你猜呀:"+i);
			map.put("state", i%2==0?true:false);
			map.put("id", i+1);
			list.add(map);
		}
		page.setRows(list);
		page.setTotal(10);
		return page;
	}
}
