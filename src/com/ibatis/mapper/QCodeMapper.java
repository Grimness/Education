package com.ibatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.QCode;

public interface QCodeMapper {
		//单元码
		public void insertUnitQCode(QCode qCode);
		public List<QCode> selectUnitQCodeList();
		public String isExitUnit(@Param("fname")String fname);
		public String isExitUnitDesc(QCode qCode);
		//课时码
		public void insertKSQCode(QCode qCode);
		public List<QCode> selectKSQCodeList();
		public String isExitHour(@Param("fname")String fname);
		public String isExitHourDesc(QCode qCode);
		
		public void updateHourQCode(QCode qCode);
		public void updateUnitQCode(QCode qCode);
		public void deleteHourQCode(QCode qCode);
		public void deleteUnitQCode(QCode qCode);
		public List<QCode> getDyDesc(QCode qCode);
		public List<QCode> getKsDesc(QCode qCode);
	
} 
