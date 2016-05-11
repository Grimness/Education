package com.business.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.User;
import com.ibatis.model.json.Area;
import com.ibatis.model.json.Parents;
import com.ibatis.model.json.School;
import com.ibatis.model.json.Teacher;

public interface UserService {
	public List<User> getteacher();
	public List<User> searchteacher(User user);
	public Teacher teacherlogin(@Param("fphone")String fphone,@Param("fpassword")String fpassword);
	public void updateteacher_right(User user);
	public List<User> getparents();
	public List<User> searchparents(User user);
	public void updateparents_right(User user);
	public Parents parentslogin(@Param("fphone")String fphone,@Param("fpassword")String fpassword);
	public Teacher teachercheck(@Param("fphone")String fphone);
	public Parents parentscheck(@Param("fphone")String fphone);
	public List<Area> getarea();
	public List<School> getschool();
	public void addteacher(@Param("fphone")String fphone,@Param("fpassword")String fpassword);
	public void addparents(@Param("fphone")String fphone,@Param("fpassword")String fpassword);
	public void addteacher_data(Teacher teacher);
	public void addparents_data(Parents parents);
	public void addteacher_type(@Param("fphone")String fphone);
	public void addparents_type(@Param("fphone")String fphone);
}
