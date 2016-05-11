package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.QCodeService;
import com.ibatis.mapper.QCodeMapper;
import com.ibatis.model.QCode;

@Service("QCodeService")
public class QCodeServiceImpl implements QCodeService{

	@Autowired
	private QCodeMapper qCodeMapper;
	@Override
	public void insertUnitQCode(QCode qCode) {
		// TODO Auto-generated method stub
		qCodeMapper.insertUnitQCode(qCode);
	}

	@Override
	public List<QCode> selectUnitQCodeList() {
		// TODO Auto-generated method stub
		return qCodeMapper.selectUnitQCodeList();
	}

	@Override
	public void insertKSQCode(QCode qCode) {
		// TODO Auto-generated method stub
		qCodeMapper.insertKSQCode(qCode);
	}

	@Override
	public List<QCode> selectKSQCodeList() {
		// TODO Auto-generated method stub
		return qCodeMapper.selectKSQCodeList();
	}

	

	@Override
	public List<QCode> getDyDesc(QCode qCode) {
		// TODO Auto-generated method stub
		return qCodeMapper.getDyDesc(qCode);
	}

	@Override
	public String isExitUnit(String fname) {
		// TODO Auto-generated method stub
		return qCodeMapper.isExitUnit(fname);
	}

	@Override
	public String isExitHour(String fname) {
		// TODO Auto-generated method stub
		return qCodeMapper.isExitHour(fname);
	}

	@Override
	public String isExitUnitDesc(QCode qCode) {
		// TODO Auto-generated method stub
		return qCodeMapper.isExitUnitDesc(qCode);
	}

	@Override
	public String isExitHourDesc(QCode qCode) {
		// TODO Auto-generated method stub
		return qCodeMapper.isExitHourDesc(qCode);
	}

	@Override
	public void updateHourQCode(QCode qCode) {
		// TODO Auto-generated method stub
		qCodeMapper.updateHourQCode(qCode);
	}

	@Override
	public void updateUnitQCode(QCode qCode) {
		// TODO Auto-generated method stub
		qCodeMapper.updateUnitQCode(qCode);
	}

	@Override
	public void deleteHourQCode(QCode qCode) {
		// TODO Auto-generated method stub
		qCodeMapper.deleteHourQCode(qCode);
	}

	@Override
	public void deleteUnitQCode(QCode qCode) {
		// TODO Auto-generated method stub
		qCodeMapper.deleteUnitQCode(qCode);
	}

	@Override
	public List<QCode> getKsDesc(QCode qCode) {
		// TODO Auto-generated method stub
		return qCodeMapper.getKsDesc(qCode);
	}

}
