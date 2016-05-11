package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.ScanService;
import com.ibatis.mapper.ScanMapper;
import com.ibatis.model.ScanRecord;

@Service("ScanService")
public class ScanServiceImpl implements ScanService{

	@Autowired
	private ScanMapper scanMapper;
	
	@Override
	public void insertScanRecord(ScanRecord scanRecord) {
		// TODO Auto-generated method stub
		scanMapper.insertScanRecord(scanRecord);
	}


	@Override
	public List<String> dateGroupSRecord(String FPhone) {
		// TODO Auto-generated method stub
		return scanMapper.dateGroupSRecord(FPhone);
	}


	@Override
	public List<ScanRecord> selectSRListByDate(String FPhone, String FDate) {
		// TODO Auto-generated method stub
		return scanMapper.selectSRListByDate(FPhone, FDate);
	}


	@Override
	public List<ScanRecord> getQRCode(String FPhone) {
		// TODO Auto-generated method stub
		return scanMapper.getQRCode(FPhone);
	}


	@Override
	public String getTitleName(String FName) {
		// TODO Auto-generated method stub
		return scanMapper.getTitleName(FName);
	}

	
	


}
