package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.ERecordService;
import com.ibatis.mapper.ERecordMapper;
import com.ibatis.model.ERecord;

@Service("ERecordService")
public class ERecordServiceImpl implements ERecordService {
	
	@Autowired
	private ERecordMapper eRecordMapper;
	@Override
	public void insertERecord(ERecord eRecord) {
		// TODO Auto-generated method stub
		eRecordMapper.insertERecord(eRecord);
	}



	@Override
	public List<ERecord> studentERecord(String FERID) {
		// TODO Auto-generated method stub
		return eRecordMapper.studentERecord(FERID);
	}

	@Override
	public String selectERecordID(String FTitle) {
		// TODO Auto-generated method stub
		return eRecordMapper.selectERecordID(FTitle);
	}

	@Override
	public List<String> dateGroupERecord(String FStudentID) {
		// TODO Auto-generated method stub
		return eRecordMapper.dateGroupERecord(FStudentID);
	}

	@Override
	public List<ERecord> studentERecordListByDate(String FStudentID,
			String fdate) {
		// TODO Auto-generated method stub
		return eRecordMapper.studentERecordListByDate(FStudentID, fdate);
	}



	@Override
	public String teacherCheck(String fphone) {
		// TODO Auto-generated method stub
		return eRecordMapper.teacherCheck(fphone);
	}



	@Override
	public String teacherSubject(String fphone) {
		// TODO Auto-generated method stub
		return eRecordMapper.teacherSubject(fphone);
	}



	@Override
	public void insertERecordList(ERecord eRecord) {
		// TODO Auto-generated method stub
		eRecordMapper.insertERecordList(eRecord);
	}



	@Override
	public String getERecordId(String ftitle) {
		// TODO Auto-generated method stub
		return eRecordMapper.getERecordId(ftitle);
	}



	@Override
	public String isExitRecordList(String ferid, String fsubjectid) {
		// TODO Auto-generated method stub
		return eRecordMapper.isExitRecordList(ferid, fsubjectid);
	}



	@Override
	public void updateRecordList(ERecord eRecord) {
		// TODO Auto-generated method stub
		eRecordMapper.updateRecordList(eRecord);
	}

}
