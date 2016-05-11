package com.business.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.FChild;
import com.ibatis.model.TeacherClass;

public interface TeacherClassService {
	public String getTeacherID(@Param("fphone")String fphone);//获取教师id
	public void  addfClass(TeacherClass teacherclass);//创建班级
	public void updateteacher_class(TeacherClass teacherclass);//更新教师信息
	public void updateclasscode(TeacherClass teacherclass);//更新课时码
	public String getClassId(TeacherClass teacherclass);
	//孩子信息
	public List<FChild> getchild(@Param("fclasscode")String fclasscode);//获取孩子详细信息
	//获取该老师的班级信息
	public List<TeacherClass> getTeacherClass(@Param("fphone")String fphone);
	 //班级是否存在
	public TeacherClass isExistCLass(TeacherClass teacherclass);
	public String isExitsClasscode(@Param("fclasscode")String fclasscode);

}
