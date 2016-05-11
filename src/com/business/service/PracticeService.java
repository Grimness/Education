package com.business.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.Practice;

public interface PracticeService {
	public void addPractice(Practice practice);
	public List<String> dateGroup(@Param("FStudentID")String FStudentID);
	public List<Practice> studentPractice(@Param("FStudentID")String FStudentID);
	public List<Practice> studentPracticeByDate(@Param("FStudentID")String FStudentID,@Param("fdate")String fdate);
}
