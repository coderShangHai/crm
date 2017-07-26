package com.fxeie.crm.controller.system;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fxeie.crm.model.ResultModel;

@Controller
@RequestMapping("protocol")
public class ProtocolController {
	private String ROOT_PATH = "system/protocol/";
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index(){
		return ROOT_PATH + "index";
	}
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public ResultModel<String> save(){
		return new ResultModel<String>(true,"修改成功","");
	}
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public List<Map<String,Object>> list(){
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("name", "模拟账户开户协议");
		map.put("traditionalName", "模擬賬戶開戶協議");
		map.put("englishName", "Demo Account Opening Agreement");
		map.put("id", 1);
		list.add(map);
		Map<String,Object> map1 = new HashMap<String,Object>();
		map1.put("name", "真实账户开户协议");
		map1.put("traditionalName", "真實賬戶開戶協議");
		map1.put("englishName", "Real Account Opening Agreement");
		map1.put("id", 2);
		list.add(map1);
		Map<String,Object> map2 = new HashMap<String,Object>();
		map2.put("name", "代理账户开户协议");
		map2.put("traditionalName", "代理賬戶開戶協議");
		map2.put("englishName", "Agent Account Opening Agreement");
		map2.put("id", 3);
		list.add(map2);
		Map<String,Object> map3 = new HashMap<String,Object>();
		map3.put("name", "风险披露声明");
		map3.put("traditionalName", "風險披露聲明");
		map3.put("englishName", "Risk Disclosure Statement");
		map3.put("id", 4);
		list.add(map3);
		Map<String,Object> map4 = new HashMap<String,Object>();
		map4.put("name", "免责声明");
		map4.put("traditionalName", "免責聲明");
		map4.put("englishName", "Disclaimer");
		map4.put("id", 5);
		list.add(map4);
		return list;
	}
}
