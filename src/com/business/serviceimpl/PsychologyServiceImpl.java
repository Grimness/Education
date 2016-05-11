package com.business.serviceimpl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.PsychologyService;
import com.ibatis.mapper.PsychologyMapper;
import com.ibatis.model.Exercise;
import com.ibatis.model.Homeupdate;
import com.ibatis.model.Psychology;
import com.ibatis.model.Homework;
import com.ibatis.model.TeacherClass;
import com.ibatis.model.User;

@Service("PsychologyService")
public class PsychologyServiceImpl implements PsychologyService{
	@Autowired
	private PsychologyMapper psychologyMapper;

	@Override
	public List<Psychology> selectPsychology(Psychology psychology) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectPsychology(psychology);
	}

	@Override
	public void insertHomework(Homework homework) {
		// TODO Auto-generated method stub
		psychologyMapper.insertHomework(homework);
	}

	@Override
	public void deletePsychology() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePsychology() {
		// TODO Auto-generated method stub
		
	}



	@Override
	public List<Psychology> selectPsychologyFPhone(Psychology psychology) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectPsychologyFPhone(psychology);
	}

	@Override
	public List<TeacherClass> selectTeacherClass(TeacherClass teacherClass) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectTeacherClass(teacherClass);
	}

	@Override
	public List<Exercise> selectExercise(User user) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectExercise(user);
	}

	@Override
	public List<Homework> selectSubmessage(
			Homework homework) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectSubmessage(homework);
	}

	@Override
	public Exercise selectExercise1(User user) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectExercise1(user);
	}

	@Override
	public List<Homework> selectHomewoek(Homework homework) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectHomewoek(homework);
	}

	@Override
	public void updateHomework(Homework homework) {
		// TODO Auto-generated method stub
		psychologyMapper.updateHomework(homework);
	}

	@Override
	public List<Homework> selectOperationCheck(Homework homework) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectOperationCheck(homework);
	}

	@Override
	public void insertCheckMarking(Homework homework) {
		// TODO Auto-generated method stub
		psychologyMapper.insertCheckMarking(homework);
	}
	//作业上传后的查看
	@Override
	public List<Homework> selectCheckMarking(Homework homework) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectCheckMarking(homework);
	}
	//教师端作业状态
	@Override
	public List<Homework> selectJobStatus(Homework homework) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectJobStatus(homework);
	}
	//教师端查看作业情况
	@Override
	public List<Homework> selectCheckingHomework(Homework homework) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectCheckingHomework(homework);
	}
	//作业辅导
	@Override
	public List<Homework> selectCheckAnswer3(Homework homework) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectCheckAnswer3(homework);
	}

	@Override
	public List<Homeupdate> selectHome(Homeupdate homeupdate) {
		// TODO Auto-generated method stub
		return psychologyMapper.selectHome(homeupdate);
	}

	@Override
	public void updateHome(Homeupdate homeupdate) {
		// TODO Auto-generated method stub
		psychologyMapper.updateHome(homeupdate);
	}


	
	
}
