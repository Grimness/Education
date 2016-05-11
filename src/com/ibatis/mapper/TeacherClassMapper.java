package com.ibatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.FChild;
import com.ibatis.model.TeacherClass;

public interface TeacherClassMapper {
	
	 public void  addfClass(TeacherClass teacherclass);//创建班级
	 public String getClassId(TeacherClass teacherclass);//获取班级码
	 public String getTeacherID(@Param("fphone")String fphone);//获取教师id
	 public String getGradeName(@Param("fgradeid")String fgradeid);//年级名称
	 public String getClassName(@Param("fclassid")String fclassid);//班级名称
	 public void updateteacher_class(TeacherClass teacherclass);//更新教师班级
	 public void updateclasscode(TeacherClass teacherclass);//更新班级码
	//获取班级详细信息
	 public List<FChild> getchild(@Param("fclasscode")String fclasscode);
	 //获取该老师的班级信息
	 public List<TeacherClass> getTeacherClass(@Param("fphone")String fphone);
	 //获取该班级信息
	 public TeacherClass isExistCLass(TeacherClass teacherclass);
	 public String isExitsClasscode(@Param("fclasscode")String fclasscode);
}
