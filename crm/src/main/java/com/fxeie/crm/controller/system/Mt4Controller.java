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
@RequestMapping("mt4")
public class Mt4Controller {
	private String ROOT_PATH = "system/mt4/";
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
		for(int i=1;i<12;i++){
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("groupName", "IB-70"+(i<10?"0"+i:i));
			map.put("isEnabled", i%2==0?true:false);
			list.add(map);
		}
		return list;
	}
}
