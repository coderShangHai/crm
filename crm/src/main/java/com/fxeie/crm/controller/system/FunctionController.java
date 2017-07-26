package com.fxeie.crm.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fxeie.crm.model.ResultModel;

@Controller
@RequestMapping("function")
public class FunctionController {
	private String ROOT_PATH = "system/function/";
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index(){
		return ROOT_PATH + "index";
	}
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public ResultModel<String> save(){
		return new ResultModel<String>(true,"修改成功","");
	}
}
