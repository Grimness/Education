package com.business.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.json.Points;
import com.ibatis.model.json.PointsList;

public interface PointService {
	
	 public void addPointsList(@Param("fphone") String fphone,@Param("fsource") String fsource);
	 public void addPointsALL(@Param("fphone") String fphone,@Param("fpoints") String fpoints);
	 public void updatePoints(@Param("fphone") String fphone,@Param("fpoints") String fpoints);
	 public List<PointsList> getConsumePointList(@Param("fphone") String fphone);
	 public List<PointsList> getAddPointList(@Param("fphone") String fphone);
	 public Points getPoints(@Param("fphone") String fphone);
	 public String sumPointadd(@Param("fphone") String fphone);
	 public String sumPointconsume(@Param("fphone") String fphone);
	 public void comsumePoints(@Param("fphone") String fphone,@Param("fpoints") String fpoints);
	 
}
