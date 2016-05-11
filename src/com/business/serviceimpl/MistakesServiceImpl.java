package com.business.serviceimpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.MistakesService;
import com.ibatis.mapper.MistakesMapper;
import com.ibatis.model.Exercise;
import com.ibatis.model.MistakesResult;

@Service("MistakesService")
public class MistakesServiceImpl implements MistakesService {
	
	@Autowired
	private MistakesMapper mistakesMapper;
	
	@Override
	public void insertMistakesResult(MistakesResult mistakesResult) {
		
		mistakesMapper.insertMistakesResult(mistakesResult);
	}

	@Override
	public List<MistakesResult> getFChildMistakes(String FStudentID) {
		// TODO Auto-generated method stub
		return mistakesMapper.getmistakesList(FStudentID);
	}

	
	@Override
	public Exercise getmistakesAns(String FExerciseID) {
		// TODO Auto-generated method stub
		return mistakesMapper.getmistakesAns(FExerciseID);
	}

	@Override
	public List<MistakesResult> getmistakesClassList(String FClassID) {
		// TODO Auto-generated method stub
		return mistakesMapper.getmistakesClassList(FClassID);
	}

	@Override
	public String findClass(String FStudentID) {
		// TODO Auto-generated method stub
		return mistakesMapper.findClass(FStudentID);
	}

	@Override
	public void removeClassMistakesList(String FExerciseID) {
		// TODO Auto-generated method stub
		mistakesMapper.removeClassMistakesList(FExerciseID);
	}

	@Override
	public void removeChildMistakesList(String FExerciseID, String FStudentID) {
		// TODO Auto-generated method stub
		mistakesMapper.removeChildMistakesList(FExerciseID, FStudentID);
	}

}
