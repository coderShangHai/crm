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
@RequestMapping("accountType")
public class AccountApplyController {
	private String ROOT_PATH = "business/accountType/";
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
			map.put("tempAccount", "888800000"+(i+1));
			map.put("applyDate", new Date());
			map.put("nickName", "杨莉:"+i);
			map.put("phoneNum", "15921661434");
			map.put("email", "79627313@qq.com");
			map.put("idCard", "411303198904075937");
			map.put("country", "中国");
			map.put("address", "中国 湖北省房县城关镇南街12号");
			map.put("sameAccountNum", (i+1));
			map.put("accountType", "标准账户");
			map.put("lever", 100);
			map.put("proxy", "703087");
			map.put("state", true);
			map.put("explain", "");
			map.put("id", i+1);
			list.add(map);
		}
		page.setRows(list);
		page.setTotal(10);
		return page;
	}
}
