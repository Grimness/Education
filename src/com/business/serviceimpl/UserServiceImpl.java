package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.UserService;
import com.ibatis.mapper.UserMapper;
import com.ibatis.model.User;
import com.ibatis.model.json.Area;
import com.ibatis.model.json.Parents;
import com.ibatis.model.json.School;
import com.ibatis.model.json.Teacher;



@Service("UserService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper usermapper;
	
	@Override
	public List<User> getteacher() {
		return  usermapper.getteacher();
	}

	@Override
	public Teacher teacherlogin(String fphone, String fpassword) {
		// TODO Auto-generated method stub
		return usermapper.teacherlogin(fphone, fpassword);
	}

	@Override
	public void updateteacher_right(User user) {
		// TODO Auto-generated method stub
		usermapper.updateteacher_right(user);
	}

	@Override
	public List<User> getparents() {
		// TODO Auto-generated method stub
		return usermapper.getparents();
	}

	@Override
	public void updateparents_right(User user) {
		// TODO Auto-generated method stub
		usermapper.updateparents_right(user);
	}

	@Override
	public Parents parentslogin(String fphone, String fpassword) {
		// TODO Auto-generated method stub
		return usermapper.parentslogin(fphone, fpassword);
	}

	@Override
	public Teacher teachercheck(String fphone) {
		// TODO Auto-generated method stub
		return usermapper.teachercheck(fphone);
	}

	@Override
	public Parents parentscheck(String fphone) {
		// TODO Auto-generated method stub
		return usermapper.parentscheck(fphone);
	}

	@Override
	public List<Area> getarea() {
		// TODO Auto-generated method stub
		return usermapper.getarea();
	}

	@Override
	public List<School> getschool() {
		// TODO Auto-generated method stub
		return usermapper.getschool();
	}

	@Override
	public void addteacher(String fphone, String fpassword) {
		// TODO Auto-generated method stub
		usermapper.addteacher(fphone, fpassword);
	}

	@Override
	public void addparents(String fphone, String fpassword) {
		// TODO Auto-generated method stub
		usermapper.addparents(fphone, fpassword);
	}

	@Override
	public void addteacher_data(Teacher teacher) {
		// TODO Auto-generated method stub
		usermapper.addteacher_data(teacher);
	}

	@Override
	public void addparents_data(Parents parents) {
		// TODO Auto-generated method stub
		usermapper.addparents_data(parents);
	}

	@Override
	public void addteacher_type(String fphone) {
		// TODO Auto-generated method stub
		usermapper.addteacher_type(fphone);
	}

	@Override
	public void addparents_type(String fphone) {
		// TODO Auto-generated method stub
		usermapper.addparents_type(fphone);
	}

	@Override
	public List<User> searchteacher(User user) {
		// TODO Auto-generated method stub
		return usermapper.searchteacher(user);
	}

	@Override
	public List<User> searchparents(User user) {
		// TODO Auto-generated method stub
		return usermapper.searchparents(user);
	}

	
}
