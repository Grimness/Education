package com.ibatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.FChild;
import com.ibatis.model.TeacherClass;
import com.ibatis.model.json.Area;
import com.ibatis.model.json.Parents;
import com.ibatis.model.json.School;
import com.ibatis.model.json.Teacher;

public interface ChildMapper {
	 public void addChild(FChild fchild);
	 public FChild getChildByID(@Param("fid")String fid);
	 public String getChildID(FChild fchild);
	 public void updateChildName(@Param("fname")String fname,@Param("fid")String fid);
	 
	 public List<Area> getProvince();
	 public List<Area> getCity(@Param("provinceid")String provinceid);
	 public List<Area> getArea(@Param("cityid")String cityid);
	 public List<School> getSchool(@Param("fareaid")String fareaid);
	
	 
	 public void updateFirstChild(Parents parents);
	 public void updateSecondChild(Parents parents);
	 public Parents getParentsChild(@Param("fphone")String fphone);
	 public String getClass(@Param("fclasscode")String fclasscode);
}
