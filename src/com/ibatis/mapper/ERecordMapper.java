package com.ibatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.ERecord;

public interface ERecordMapper {
	//添加学生电子档案
	public void insertERecord(ERecord eRecord);
	public void insertERecordList(ERecord eRecord);
	public List<String> dateGroupERecord(@Param("FStudentID")String FStudentID);
	public List<ERecord> studentERecordListByDate(@Param("FStudentID")String FStudentID,@Param("fdate")String fdate);
	public List<ERecord> studentERecord(@Param("ferid")String ferid);
	public String selectERecordID(@Param("FTitle")String FTitle);
	public String teacherCheck(@Param("fphone")String fphone);
	public String teacherSubject(@Param("fphone")String fphone);
	public String getERecordId(@Param("ftitle")String ftitle);
	public String isExitRecordList(@Param("ferid")String ferid,@Param("fsubjectid")String fsubjectid);
	public void updateRecordList(ERecord eRecord);
}
