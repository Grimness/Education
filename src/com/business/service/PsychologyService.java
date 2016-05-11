package com.business.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.Exercise;
import com.ibatis.model.Homeupdate;
import com.ibatis.model.Psychology;
import com.ibatis.model.Homework;
import com.ibatis.model.TeacherClass;
import com.ibatis.model.User;
public interface PsychologyService {
	public List<Psychology> selectPsychology(Psychology psychology);
	public void insertHomework(Homework homework);
	public void deletePsychology();
	public void updatePsychology();
	public List<Psychology> selectPsychologyFPhone(Psychology psychology); 
	public List<TeacherClass> selectTeacherClass(TeacherClass teacherClass);
	public List<Exercise> selectExercise(User user);
	public Exercise selectExercise1(User user);
	public List<Homework> selectSubmessage(Homework homework);
	public List<Homework> selectHomewoek(Homework homework);
	public void updateHomework(Homework homework);
	
	public List<Homework> selectOperationCheck(Homework homework);
	
	public void insertCheckMarking(Homework homework);
	
	public List<Homework> selectCheckMarking(Homework homework);//作业上传后的查看
	
	public List<Homework> selectJobStatus(Homework homework);//教师端作业状态
	
	public List<Homework> selectCheckingHomework(Homework homework);
	
	public List<Homework> selectCheckAnswer3(Homework homework);//作业辅导
	
	public List<Homeupdate> selectHome(Homeupdate homeupdate);//查看老师端布置作业
	public void updateHome(Homeupdate homeupdate);//修改老师端布置作业信息
}
