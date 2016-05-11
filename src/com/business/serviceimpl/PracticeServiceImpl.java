package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.PracticeService;
import com.ibatis.mapper.PracticeMapper;
import com.ibatis.model.Practice;

@Service("PracticeService")
public class PracticeServiceImpl implements PracticeService{

	@Autowired
	private PracticeMapper practiceMapper;
	@Override
	public void addPractice(Practice practice) {
		// TODO Auto-generated method stub
		practiceMapper.addPractice(practice);
	}

	@Override
	public List<Practice> studentPractice(String FStudentID) {
		// TODO Auto-generated method stub
		return practiceMapper.studentPractice(FStudentID);
	}

	@Override
	public List<String> dateGroup(String FStudentID) {
		// TODO Auto-generated method stub
		return practiceMapper.dateGroup(FStudentID);
	}

	@Override
	public List<Practice> studentPracticeByDate(String FStudentID, String fdate) {
		// TODO Auto-generated method stub
		return practiceMapper.studentPracticeByDate(FStudentID, fdate);
	}

}
