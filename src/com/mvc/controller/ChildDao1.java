package com.mvc.controller;


import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.business.service.ChildService;
import com.business.service.UserService;
import com.ibatis.model.FChild;
import com.ibatis.model.json.Parents;

@Controller
public class ChildDao1 {
	@Autowired
	private ChildService  childService;
	@Autowired
	private UserService  userService;
	
	//家长端  
	/**
	 * 添加另一个孩子账号
	 * @param fchild
	 * @param fphone 
	 * @return
	 */
	@RequestMapping(value = "Child_Add",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject Child_Add(@RequestBody FChild fchild){
		String fphone = fchild.getFphone();
		JSONObject jsonObject=new JSONObject();
		//获取该父母的孩子信息
		Parents parents = childService.getParentsChild(fphone);
		parents.setFareaid(fchild.getFareaid());
		if(childService.getClass(fchild.getFclasscode())==null||childService.getClass(fchild.getFclasscode()).equals("")){
			jsonObject.put("message", "添加失败，该班级码不存在");
			jsonObject.put("error_code", 1);
			jsonObject.put("errmsg", "fail");
			return jsonObject;
		}
		//孩子是否存在
		if(childService.getChildByID(fchild.getfStudentNo()) == null){
			//添加第一个孩子
			if(parents.getFchildid()==0){
				//添加孩子
				childService.addChild(fchild);
				parents.setFchildid(Integer.parseInt(fchild.getfStudentNo()));
				childService.updateFirstChild(parents);
				jsonObject.put("message", "添加成功！");
				jsonObject.put("errmsg", "success");
				jsonObject.put("error_code", 0);
				return jsonObject;
			}
			//添加第二个孩子
			if(parents.getFchildid2()==0){
				if(Integer.parseInt(fchild.getfStudentNo())==parents.getFchildid()){
					jsonObject.put("message", "添加失败,该孩子已跟该用户关联");
					jsonObject.put("error_code", 0);
					jsonObject.put("errmsg", "fail");
					return jsonObject;					
				}
				//添加孩子
				childService.addChild(fchild);
				parents.setFchildid2(Integer.parseInt(fchild.getfStudentNo()));
				childService.updateSecondChild(parents);
				jsonObject.put("message", "添加成功！");
				jsonObject.put("error_code", 0);
				jsonObject.put("errmsg", "success");
				return jsonObject;
			}
			//存在两个孩子信息
			if(parents.getFchildid()!=0&&parents.getFchildid2()!=0){//存在两个孩子
				jsonObject.put("message", "添加失败，该用户已关联两位孩子");
				jsonObject.put("error_code", 1);
				jsonObject.put("errmsg", "fail");
				return jsonObject;
			}
		}else{
			//存在孩子信息
			//更新第一个孩子
			if(parents.getFchildid()==0){
				parents.setFchildid(Integer.parseInt(fchild.getfStudentNo()));
				childService.updateFirstChild(parents);
				jsonObject.put("message", "该孩子信息已存在，并已跟您手机号关联");
				jsonObject.put("error_code", 0);
				jsonObject.put("errmsg", "success");
				return jsonObject;
			}
			//更新第二个孩子
			if(parents.getFchildid2()==0){
				if(Integer.parseInt(fchild.getfStudentNo())==parents.getFchildid()){
					jsonObject.put("message", "添加失败,该孩子已跟该用户关联");
					jsonObject.put("error_code", 1);
					jsonObject.put("errmsg", "fail");
					return jsonObject;					
				}
				parents.setFchildid2(Integer.parseInt(fchild.getfStudentNo()));
				childService.updateSecondChild(parents);
				jsonObject.put("message", "该孩子信息已存在，并已跟您手机号关联");
				jsonObject.put("error_code", 0);
				jsonObject.put("errmsg", "success");
				return jsonObject;
			}
			//存在两个孩子信息
			if(parents.getFchildid()!=0&&parents.getFchildid2()!=0){//存在两个孩子
				jsonObject.put("message", "添加失败，该用户已关联两位孩子");
				jsonObject.put("error_code", 1);
				jsonObject.put("errmsg", "fail");
				return jsonObject;
			}
		}
		return jsonObject;
	}
	
	
	//个人中心 两个孩子
	@RequestMapping(value = "center_child",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject center_child(@Param("fphone")String fphone){
		JSONObject jsonObject=new JSONObject();
	
		Parents parents = childService.getParentsChild(fphone);
		FChild fChild = childService.getChildByID(parents.getFchildid()+"");
		FChild fChild2 = childService.getChildByID(parents.getFchildid2()+"");
		if(parents.getFchildid()==0){
			jsonObject.put("errmsg", "fail");
			jsonObject.put("error_code", 1);
			jsonObject.put("message", "该用户还没有添加孩子信息");
			return jsonObject;
		}
		if(parents.getFchildid2()!=0){
			jsonObject.put("child2", fChild2);
		}
		jsonObject.put("child1", fChild);
		jsonObject.put("errmsg", "success");
		jsonObject.put("error_code", 0);
		return jsonObject;
	}
	
	/**
	 * 孩子资料接口
	 * @param fid  孩子学号
	 * @return
	 */
	@RequestMapping(value = "child_message",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject child_message(@Param("fid")String fid){
		JSONObject jsonObject=new JSONObject();
		if(childService.getChildByID(fid)==null){
			jsonObject.put("error_code", 1);
			jsonObject.put("errmsg", "fail");
			jsonObject.put("message", "孩子不存在");
		}else{
			FChild child = childService.getChildByID(fid);
			jsonObject.put("child", child);
			jsonObject.put("error_code", 0);
			jsonObject.put("errmsg", "success");
		}
		return jsonObject;
	}
	
	/**
	 * 更新孩子姓名
	 * @param fchild
	 * @return
	 *//*
	@RequestMapping(value="update_childname",produces="application/json;charset=utf-8")
	@ResponseBody
	public JSONObject update_childname(FChild fchild){
		JSONObject jsonObject = new JSONObject();
		childService.updateChildName(fchild.getFname(),fchild.getFid());
		FChild child = childService.getChildByID(fchild.getFid());
		jsonObject.put("child", child);
		return jsonObject;
	}*/
	
	
	/**
	 * 学校接口
	 * @return
	 */
	@RequestMapping(value="getSchool",produces="application/json;charset=utf-8")
	@ResponseBody
	public JSONObject  getSchool(){
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("schools", userService.getschool());	
		return jsonObject;
	}
	
	
	/**
	 * 地区接口
	 * @return
	 */
	@RequestMapping(value="getArea",produces="application/json;charset=utf-8")
	@ResponseBody
	public JSONObject  getArea(){
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("areas", userService.getarea());	
		return jsonObject;
	}
	
	
	
}
