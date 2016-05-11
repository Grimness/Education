package com.mvc.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.business.service.TeacherClassService;
import com.business.service.UserService;
import com.ibatis.model.FChild;
import com.ibatis.model.TeacherClass;
import com.ibatis.model.json.Teacher;

@Controller
public class TeacherClassDao {
	@Autowired
	private TeacherClassService  teacherclassservice;
	@Autowired
	private UserService userService;
	
	/**
	 * 班级管理--班级--班级人员接口
	 * @param fclassid 班级码
	 * @return
	 */
	@RequestMapping(value = "class_message",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject child_message(@Param("fclasscode")String fclasscode){
		JSONObject jsonObject=new JSONObject();
		if(teacherclassservice.isExitsClasscode(fclasscode)==null||teacherclassservice.isExitsClasscode(fclasscode).equals("")){
			jsonObject.put("error_code", 1);
			jsonObject.put("errmsg", "fail");
			jsonObject.put("message", "班级码不存在");
			return jsonObject;
		}
		List<FChild>  childs = teacherclassservice.getchild(fclasscode);
		if(childs.size()==0){
			jsonObject.put("error_code", 1);
			jsonObject.put("errmsg", "fail");
			jsonObject.put("message", "该班级还没有学生信息");
			return jsonObject;
		}
		jsonObject.put("childs",childs);
		jsonObject.put("error_code", 0);
		jsonObject.put("errmsg", "success");
		return jsonObject;
	}
	
	
	
	/**
	 * 创建班级保存接口
	 * @param teacherclass
	 * @return
	 */
	@RequestMapping(value = "save_class",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject save_class(TeacherClass teacherclass){
		JSONObject jsonObject=new JSONObject();
		if(userService.teachercheck(teacherclass.getFphone())==null){
			jsonObject.put("error_code", 1);
			jsonObject.put("errmsg", "fail");
			jsonObject.put("message","添加失败，该用户不存在");
			return jsonObject;
		}
		Teacher teacher = userService.teachercheck(teacherclass.getFphone());
		//是否存在教师学校信息
		if(teacher.getFschoolid()==null||teacher.getFschoolid()==""){
			//更新教师信息
			teacherclassservice.updateteacher_class(teacherclass);
		}else{
			//所填写的学校信息是否与注册时对应 	
			if(teacher.getFschoolid().equals(teacherclass.getFschoolid())){
				//所填写的科目信息是否与注册时对应
				if(teacher.getFsubjectid().equals(teacherclass.getFsubjectid())){
					//更新教师信息
					teacherclassservice.updateteacher_class(teacherclass);
				}else{
					jsonObject.put("error_code", 1);
					jsonObject.put("errmsg", "fail");
					jsonObject.put("message","添加失败，与注册时的填写的科目名称不一致");
					return jsonObject;
				}
			}else{
				jsonObject.put("error_code", 1);
				jsonObject.put("errmsg", "fail");
				jsonObject.put("message","添加失败，与注册时的填写的学校名称不一致");
				return jsonObject;
			}
		}
		if(teacherclassservice.getClassId(teacherclass)==null){
			//创建班级
			teacherclassservice.addfClass(teacherclass);
		}else{
			jsonObject.put("error_code", 0);
			jsonObject.put("errmsg", "success");
			jsonObject.put("classcode",teacherclassservice.getClassId(teacherclass));
			return jsonObject;
		}
		//更新班级信息 并生成班级码
		teacherclassservice.updateclasscode(teacherclass);	
		//获取班级码
		jsonObject.put("classcode",teacherclassservice.getClassId(teacherclass));
		jsonObject.put("error_code", 0);
		jsonObject.put("errmsg", "success");
		return jsonObject;
	}
	
	/**
	 * 班级管理接口
	 * @param fphone
	 * @return
	 */
	@RequestMapping(value = "class_manage",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject class_manage(@Param("fphone")String fphone){
	
		JSONObject jsonObject=new JSONObject();
		if(teacherclassservice.getTeacherClass(fphone)==null){
			jsonObject.put("error_code", 1);
			jsonObject.put("errmsg", "fail");
			jsonObject.put("message", "班级信息不存在");
			return jsonObject;
		}
		//获取教师班级
		List<TeacherClass> fclass = teacherclassservice.getTeacherClass(fphone);
		jsonObject.put("class",fclass);
		jsonObject.put("error_code", 0);
		jsonObject.put("errmsg", "success");
		return jsonObject;
	}
	
	
}
