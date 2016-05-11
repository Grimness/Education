package com.ibatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.Exercise;
import com.ibatis.model.MistakesResult;

public interface MistakesMapper {
	
	public void insertMistakesResult(MistakesResult mistakesResult);
	public String findClass(@Param("FStudentID")String FStudentID);
	public List<MistakesResult> getmistakesList(@Param("FStudentID")String FStudentID);
	public Exercise getmistakesAns(@Param("FExerciseID")String FExerciseID);
	public List<MistakesResult> getmistakesClassList(@Param("FClassID")String FClassID);
	public void removeClassMistakesList(@Param("FExerciseID")String FExerciseID);
	public void removeChildMistakesList(@Param("FExerciseID")String FExerciseID,@Param("FStudentID")String FStudentID);
}
