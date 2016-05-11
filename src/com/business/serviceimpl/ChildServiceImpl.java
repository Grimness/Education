package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.ChildService;
import com.ibatis.mapper.ChildMapper;
import com.ibatis.model.FChild;
import com.ibatis.model.TeacherClass;
import com.ibatis.model.json.Area;
import com.ibatis.model.json.Parents;
import com.ibatis.model.json.School;

@Service("ChildService")
public class ChildServiceImpl implements ChildService {
	
	@Autowired
	private ChildMapper childMapper;
	
	@Override
	public void addChild(FChild fchild) {
		// TODO Auto-generated method stub
		childMapper.addChild(fchild);
	}

	@Override
	public FChild getChildByID(String fid) {
		// TODO Auto-generated method stub
		return childMapper.getChildByID(fid);
	}

	@Override
	public String getChildID(FChild fchild) {
		// TODO Auto-generated method stub
		return childMapper.getChildID(fchild);
	}

	@Override
	public void updateChildName(String fname, String fid) {
		// TODO Auto-generated method stub
		childMapper.updateChildName(fname, fid);
	}

	@Override
	public List<Area> getProvince() {
		// TODO Auto-generated method stub
		return childMapper.getProvince();
	}

	@Override
	public List<Area> getCity(String provinceid) {
		// TODO Auto-generated method stub
		return childMapper.getCity(provinceid);
	}

	@Override
	public List<Area> getArea(String cityid) {
		// TODO Auto-generated method stub
		return childMapper.getArea(cityid);
	}

	@Override
	public List<School> getSchool(String fareaid) {
		// TODO Auto-generated method stub
		return childMapper.getSchool(fareaid);
	}

	

	@Override
	public Parents getParentsChild(String fphone) {
		// TODO Auto-generated method stub
		return childMapper.getParentsChild(fphone);
	}

	@Override
	public void updateFirstChild(Parents parents) {
		// TODO Auto-generated method stub
		childMapper.updateFirstChild(parents);
	}

	@Override
	public void updateSecondChild(Parents parents) {
		// TODO Auto-generated method stub
		childMapper.updateSecondChild(parents);
	}

	@Override
	public String getClass(String fclasscode) {
		// TODO Auto-generated method stub
		return childMapper.getClass(fclasscode);
	}

}
