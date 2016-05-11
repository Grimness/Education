package com.mvc.controller;

import java.util.List;

import net.sf.json.JSONArray;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.business.service.UserService;
import com.google.gson.JsonArray;
import com.ibatis.model.User;
import com.ibatis.model.json.Area;
import com.ibatis.model.json.Parents;
import com.ibatis.model.json.School;
import com.ibatis.model.json.Teacher;
	@Controller
public class UserDao {
	@Autowired
	private UserService  userservice;
	
	
	
	//用户注册
	@RequestMapping(value = "user_checkJson",produces = "application/json; charset=utf-8")
	@ResponseBody  	
	public JSONObject  user_checkJson(@Param("fphone")String fphone,@Param("fpassword")String fpassword) throws Exception {
		//调用service查找 数据库，查询辅助资料类别
		Teacher user_check=userservice.teachercheck(fphone);
		//List<Area> getAreas=userservice.getarea();
		//List<School> getschool=userservice.getschool();
		JSONObject jsonObject=new JSONObject();
		//String retmsg=null;
		if(user_check==null){
			//插入新增用户
			this.userservice.addteacher(fphone, fpassword);
			Boolean msg=true;
			jsonObject.put("success",msg);
			jsonObject.put("error_code", 0);
			jsonObject.put("message", "注册成功");
			//jsonObject.put("area", getAreas);
			//jsonObject.put("school", getschool);
			jsonObject.put("phone", fphone);
		}
		else {
			Boolean msg=false;
			jsonObject.put("success",msg);
			jsonObject.put("error_code", 1);
			jsonObject.put("message", "号码已注册");
			}
		System.out.print(jsonObject);
		//System.out.print(jsonObject);
		//JSONArray jsa=JSONArray.fromObject(teacherlogin);
		return jsonObject;
	}
	//用户身份选择
	@RequestMapping(value = "usertype_checkJson",produces = "application/json; charset=utf-8")
	@ResponseBody  	
	public JSONObject  usertype_checkJson(@Param("fphone")String fphone,@Param("ftype")int ftype) throws Exception {
		//调用service查找 数据库，查询辅助资料类别
		//Teacher user_check=userservice.teachercheck(fphone);
		List<Area> getAreas=userservice.getarea();
		List<School> getschool=userservice.getschool();
		JSONObject jsonObject=new JSONObject();
		//String retmsg=null;
		if(ftype==0){
			//插入新增用户
			this.userservice.addteacher_type(fphone);
			Boolean msg=true;
			jsonObject.put("success",msg);
			jsonObject.put("error_code", 0);
			jsonObject.put("message", "教师注册成功");
			jsonObject.put("area", getAreas);
			jsonObject.put("school", getschool);
			jsonObject.put("phone", fphone);
		}
		else if(ftype==1) {
			this.userservice.addparents_type(fphone);
			Boolean msg=true;
			jsonObject.put("success",msg);
			jsonObject.put("error_code", 0);
			jsonObject.put("area", getAreas);
			jsonObject.put("message", "家长注册成功");
			jsonObject.put("phone", fphone);
			}
		System.out.print(jsonObject);
		//System.out.print(jsonObject);
		//JSONArray jsa=JSONArray.fromObject(teacherlogin);
		return jsonObject;
	}
	
	

		//完善教师个人资料
		@RequestMapping(value = "teacher_dataJson",produces = "application/json; charset=utf-8")
		@ResponseBody  	
		public JSONObject  teacher_dataJson(Teacher teacher) throws Exception {
			//调用service查找 数据库，查询辅助资料类别
	
		
			//List<School> getschool=userservice.getschool();
			JSONObject jsonObject=new JSONObject();
			//String retmsg=null;
			//插入教师资料
			this.userservice.addteacher_data(teacher);
				Boolean msg=true;
				jsonObject.put("success",msg);
				jsonObject.put("error_code", 0);
				jsonObject.put("message", "成功");	
			return jsonObject;
		}
		
		
		//完善家长个人资料
		@RequestMapping(value = "parents_dataJson",produces = "application/json; charset=utf-8")
		@ResponseBody  	
		public JSONObject  parents_dataJson(Parents parents) throws Exception {
			//调用service查找 数据库，查询辅助资料类别
			//List<School> getschool=userservice.getschool();
			JSONObject jsonObject=new JSONObject();
			//String retmsg=null;
			//插入家长资料
			this.userservice.addparents_data(parents);
				Boolean msg=true;
				jsonObject.put("success",msg);
				jsonObject.put("error_code", 0);
				jsonObject.put("message", "成功");	
			return jsonObject;
		}
		
		
		//登录接口
		@RequestMapping(value = "user_loginJson",produces = "application/json; charset=utf-8")
		@ResponseBody  	
		public JSONObject  user_loginJson(@Param("fphone")String fphone,@Param("fpassword")String fpassword) throws Exception {
			//调用service查找 数据库，查询辅助资料类别
			Teacher teacherlogin=userservice.teacherlogin(fphone, fpassword);
			Parents parentslogin=userservice.parentslogin(fphone, fpassword);
			JSONObject jsonObject=new JSONObject();
			
			//String retmsg=null;
			if(teacherlogin==null&&parentslogin==null){
				Boolean msg=false;
				jsonObject.put("success",msg);
				jsonObject.put("error_code", 1);
				jsonObject.put("message", "登录失败");
			}
		
			else if(teacherlogin!=null&&parentslogin==null){
				int right=teacherlogin.getFright();
				if(right==0){
				Boolean msg=true;
				jsonObject.put("user",0);
				jsonObject.put("success",msg);
				jsonObject.put("error_code", 0);
				jsonObject.put("message", "教师登录成功");
				jsonObject.put("data", teacherlogin);
				}
				else{
					Boolean msg=false;
					jsonObject.put("user",0);
					jsonObject.put("success",msg);
					jsonObject.put("error_code", 2);
					jsonObject.put("message", "教师账户被禁用");
					jsonObject.put("data", teacherlogin);	
					
				}
				}
				else if(teacherlogin==null&&parentslogin!=null){
					int right=parentslogin.getFright();
					if(right==0){
					Boolean msg=true;
					jsonObject.put("user",1);
					jsonObject.put("success",msg);
					jsonObject.put("error_code", 0);
					jsonObject.put("message", "家长登录成功");
					jsonObject.put("data", parentslogin);
					}
					else{
						Boolean msg=false;
						jsonObject.put("user",1);
						jsonObject.put("success",msg);
						jsonObject.put("error_code", 3);
						jsonObject.put("message", "家长账户被禁用");
						jsonObject.put("data", parentslogin);	
				}
			}	
		
			return jsonObject;
		}
		//用户注册
		@RequestMapping(value = " user_registerJson",produces = "application/json; charset=utf-8")
		@ResponseBody  	
		public JSONObject  user_registerJson(Teacher teacher,Parents parents,@Param("fphone")String fphone,@Param("fpassword")String fpassword,@Param("ftype")int ftype) throws Exception {
			//调用service查找 数据库，查询辅助资料类别
	
			this.userservice.addteacher(fphone, fpassword);
			//List<School> getschool=userservice.getschool();
			JSONObject jsonObject=new JSONObject();
			//String retmsg=null;
			//插入教师资料
			if(ftype==0){
		
				this.userservice.addteacher_type(fphone);
				this.userservice.addteacher_data(teacher);
				Boolean msg=true;
				jsonObject.put("success",msg);
				jsonObject.put("error_code", 0);
				jsonObject.put("message", "教师注册成功");
			}
			else if(ftype==1){
				this.userservice.addparents_type(fphone);
				this.userservice.addparents_data(parents);
				Boolean msg=true;
				jsonObject.put("success",msg);
				jsonObject.put("error_code", 0);
				jsonObject.put("message", "家长注册成功");
			}
			return jsonObject;
		}
		//注册返回资料
		@RequestMapping(value = " data_registerJson",produces = "application/json; charset=utf-8")
		@ResponseBody  	
		public JSONObject  data_registerJson(@Param("ftype")int ftype) throws Exception {
			//调用service查找 数据库，查询辅助资料类别
	
			
			//List<School> getschool=userservice.getschool();
			JSONObject jsonObject=new JSONObject();
			List<Area> getAreas=userservice.getarea();
			List<School> getschool=userservice.getschool();
			//String retmsg=null;
			//插入教师资料
			if(ftype==0){
		
				
				Boolean msg=true;
				jsonObject.put("area",getAreas);
				jsonObject.put("school",getschool);
				jsonObject.put("success",msg);
				jsonObject.put("error_code", 0);
				jsonObject.put("message", "教师资料返回成功");
			}
			else if(ftype==1){
				
				Boolean msg=true;
				jsonObject.put("area",getAreas);
				jsonObject.put("success",msg);
				jsonObject.put("error_code", 0);
				jsonObject.put("message", "家长资料返回成功");
			}
			return jsonObject;
		}
		//个人中心-教师，新增班级
	
	}	
