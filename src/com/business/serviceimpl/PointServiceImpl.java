package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.PointService;
import com.ibatis.mapper.PointMapper;
import com.ibatis.model.json.Points;
import com.ibatis.model.json.PointsList;


@Service("PointService")
public class PointServiceImpl implements PointService{
	
	@Autowired
	private PointMapper pointMapper;

	

	@Override
	public void addPointsList(String fphone,String fresource) {
		pointMapper.addPointsList(fphone,fresource);
	}	

	@Override
	public void updatePoints(String fphone,String fpoints) {
		pointMapper.updatePoints(fphone,fpoints);
		
	}

	@Override
	public List<PointsList> getConsumePointList(String fphone) {
		
		return pointMapper.getConsumePointList(fphone);
	}
	
	

	@Override
	public Points getPoints(String fphone) {
		
		return pointMapper.getPoints(fphone);
	}

	@Override
	public void addPointsALL(String fphone, String fpoints) {
		
		pointMapper.addPointsALL(fphone, fpoints);
		
	}

	@Override
	public String sumPointadd(String fphone) {
		
		return pointMapper.sumPointadd(fphone);
	}

	@Override
	public String sumPointconsume(String fphone) {
		
		return pointMapper.sumPointconsume(fphone);
	}

	@Override
	public void comsumePoints(String fphone, String fpoints) {
		pointMapper.comsumePoints(fphone, fpoints);
	}

	@Override
	public List<PointsList> getAddPointList(String fphone) {
		
		return pointMapper.getAddPointList(fphone);
	}
	

}
