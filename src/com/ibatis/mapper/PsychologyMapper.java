package com.ibatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.Exercise;
import com.ibatis.model.Homeupdate;
import com.ibatis.model.Psychology;
import com.ibatis.model.Homework;
import com.ibatis.model.TeacherClass;
import com.ibatis.model.User;

public interface PsychologyMapper {
	public List<Psychology> selectPsychology(Psychology psychology);
	public void insertPsychology();
	public void insertHomework(Homework homework);
	public void deletePsychology();
	public void updatePsychology();
	public List<Psychology> selectPsychologyFPhone(Psychology psychology);
	public List<TeacherClass> selectTeacherClass(TeacherClass teacherClass);
	public List<Homework> selectSubmessage(Homework homework);
	public List<Exercise> selectExercise(User user);
	public Exercise selectExercise1(User user);
	public List<Homework> selectHomewoek(Homework homework);
	public void updateHomework(Homework homework);
	public List<Homework> selectOperationCheck(Homework homework);
	public void insertCheckMarking(Homework homework);
	
	public List<Homework> selectCheckMarking(Homework homework);
	public List<Homework> selectJobStatus(Homework homework);
	public List<Homework> selectCheckingHomework(Homework homework);
	
	public List<Homework> selectCheckAnswer3(Homework homework);
	
	public List<Homeupdate> selectHome(Homeupdate homeupdate);
	public void updateHome(Homeupdate homeupdate);
	
}
