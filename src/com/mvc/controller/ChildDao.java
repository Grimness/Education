package com.mvc.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.business.service.ParentsChildService;
import com.ibatis.model.Child;
import com.ibatis.model.json.Students;
 
@Controller
public class ChildDao {
	@Autowired
	private ParentsChildService ChildService;
	
	//判断家长孩子的个数
	@RequestMapping(value = "parentschild_check",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject parentschild_check(@Param("fphone")String fphone)throws Exception{
	Child child=ChildService.Childcheck(fphone);
	
	JSONObject jsonObject =new JSONObject();
	if(child==null){
		Boolean msg=false;
		jsonObject.put("success",msg);
		jsonObject.put("error_code", 1);
		jsonObject.put("message", "请添加角色");
	}else{
		Boolean msg=true;	
		jsonObject.put("success",msg);
		jsonObject.put("error_code", 0);
		jsonObject.put("message", "成功");
		jsonObject.put("data", child);
		}
	return jsonObject;
	}
	//选中孩子资料
	@RequestMapping(value = "parentschild_data",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject parentschild_data(@Param("FSutdentID")int FSutdentID)throws Exception{
	Students students =ChildService.getstudents(FSutdentID);
	JSONObject jsonObject =new JSONObject();
	Boolean msg=true;
	jsonObject.put("success",msg);
	jsonObject.put("error_code", 0);
	jsonObject.put("message", "成功");
	jsonObject.put("data", students);
	return jsonObject;
	}
	
}
