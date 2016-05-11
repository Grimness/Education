package com.business.service;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.ibatis.model.Exercise;
import com.ibatis.model.MistakesResult;

public interface MistakesService {
	
	public void insertMistakesResult(MistakesResult mistakesResult);
	public List<MistakesResult> getFChildMistakes(@Param("FStudentID")String FStudentID);
	public List<MistakesResult> getmistakesClassList(@Param("FClassID")String FClassID);
	public Exercise getmistakesAns(@Param("FExerciseID")String FExerciseID);
	public String findClass(@Param("FStudentID")String FStudentID);
	public void removeClassMistakesList(@Param("FExerciseID")String FExerciseID);
	public void removeChildMistakesList(@Param("FExerciseID")String FExerciseID,@Param("FStudentID")String FStudentID);
}
