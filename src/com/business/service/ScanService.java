package com.business.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.ScanRecord;

public interface ScanService {
	
	public void insertScanRecord(ScanRecord scanRecord);
	public List<ScanRecord> selectSRListByDate(@Param("FPhone")String FPhone,@Param("FDate")String FDate);
	public List<String> dateGroupSRecord(@Param("FPhone")String FPhone);
	public List<ScanRecord> getQRCode(@Param("FPhone")String FPhone);
	public String getTitleName(@Param("FName")String FName);
}	
