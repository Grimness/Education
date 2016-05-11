package com.ibatis.mapper;

import org.apache.ibatis.annotations.Param;
import com.ibatis.model.Child;
import com.ibatis.model.json.Students;
public interface ParentsChildMapper {
	public Child Childcheck(@Param("fphone")String fphone);
	public Students getstudents(@Param("FSutdentID")int FSutdentID);
}
