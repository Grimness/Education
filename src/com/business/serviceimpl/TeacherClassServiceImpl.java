package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.TeacherClassService;
import com.ibatis.mapper.TeacherClassMapper;
import com.ibatis.model.FChild;
import com.ibatis.model.TeacherClass;

@Service("TeacherClassService")
public class TeacherClassServiceImpl implements TeacherClassService {
	
	@Autowired 
	private TeacherClassMapper teacherclassmapper;
	
	@Override
	public void updateclasscode(TeacherClass teacherclass) {
		teacherclassmapper.updateclasscode(teacherclass);
		
	}

	@Override
	public String getClassId(TeacherClass teacherclass) {
		// TODO Auto-generated method stub
		return teacherclassmapper.getClassId(teacherclass);
	}

	@Override
	public List<TeacherClass> getTeacherClass(String fphone) {
		List<TeacherClass> tcs = teacherclassmapper.getTeacherClass(fphone);
		return tcs;
	}

	@Override
	public void updateteacher_class(TeacherClass teacherclass) {
		// TODO Auto-generated method stub
		teacherclassmapper.updateteacher_class(teacherclass);
	}

	@Override
	public void addfClass(TeacherClass teacherclass) {
		teacherclassmapper.addfClass(teacherclass);
		
	}

	@Override
	public TeacherClass isExistCLass(TeacherClass teacherclass) {
		// TODO Auto-generated method stub
		return teacherclassmapper.isExistCLass(teacherclass);
	}

	@Override
	public List<FChild> getchild(String fclassid) {
		// TODO Auto-generated method stub
		List<FChild> fc = teacherclassmapper.getchild(fclassid);
		return fc;
	}

	@Override
	public String getTeacherID(String fphone) {
		// TODO Auto-generated method stub
		return teacherclassmapper.getTeacherID(fphone);
	}

	@Override
	public String isExitsClasscode(String fclasscode) {
		// TODO Auto-generated method stub
		return teacherclassmapper.isExitsClasscode(fclasscode);
	}

}
