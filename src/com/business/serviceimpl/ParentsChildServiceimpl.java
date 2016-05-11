package com.business.serviceimpl;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.ParentsChildService;
import com.ibatis.mapper.ParentsChildMapper;
import com.ibatis.model.Child;
import com.ibatis.model.json.Students;

@Service("ParentsChildService")
public class ParentsChildServiceimpl implements ParentsChildService{
	@Autowired
	private ParentsChildMapper ChildMapper;
	
	@Override
	public Child Childcheck(@Param("fphone")String fphone) {
		// TODO Auto-generated method stub
		return ChildMapper.Childcheck(fphone);
	}

	@Override
	public Students getstudents(@Param("FSutdentID")int FSutdentID) {
		// TODO Auto-generated method stub
		return ChildMapper.getstudents(FSutdentID);
	}

}
