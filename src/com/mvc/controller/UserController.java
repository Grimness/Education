package com.mvc.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.UserService;
import com.ibatis.mapper.UserMapper;
import com.ibatis.model.Exercise;
import com.ibatis.model.User;




@Controller
public class UserController {
	@Autowired
	private UserService  userservice;
//后台管理权限
	@RequestMapping(value = "bgmain", method = RequestMethod.GET)
	public ModelAndView bgmain() throws Exception {
		//调用service查找 数据库，查询辅助资料类别
		//List<User> getteacher = userservice.getteacher();
	
		// 返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		
		//modelAndView.addObject("getteacher", getteacher);
	
		modelAndView.setViewName("backstage/main");

		return modelAndView;
	}
	
//教师权限管理
	@RequestMapping(value = "teacher_management", method = RequestMethod.GET)
	public ModelAndView teacher_management() throws Exception {
		//调用service查找 数据库，查询辅助资料类别
		List<User> getteacher = userservice.getteacher();
		//String msg="ok";
		// 返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("getteacher", getteacher);
		//modelAndView.addObject("msg", msg);
		modelAndView.setViewName("backstage/teachers");

		return modelAndView;
	}
	//教师权限查询
	@RequestMapping(value = "search_teachers", method = RequestMethod.POST)
	public ModelAndView search_teachers(User user) throws Exception {
		String fphone=user.getFphone();
		String fname=user.getFname();
		List<User> getteacher =userservice.searchteacher(user);
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("fphone", fphone);
		modelAndView.addObject("fname", fname);
		modelAndView.addObject("getteacher", getteacher);
		//modelAndView.addObject("msg", msg);
		modelAndView.setViewName("backstage/teachers");

		return modelAndView;
	}
	
	//教师权限更改
	@RequestMapping(value = "updateteacher_right")
    public ModelAndView updateteacher_right(User user) throws Exception{
	System.out.println(user.getFid());

	this.userservice.updateteacher_right(user);//执行更新
		
     return teacher_management();
    }
	
	//家长权限管理
	@RequestMapping(value = "parents_management", method = RequestMethod.GET)
	public ModelAndView parents_management() throws Exception {
		//调用service查找 数据库，查询辅助资料类别
		List<User> getparents = userservice.getparents();
	
		// 返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		// 相当 于request的setAttribut，在jsp页面中通过SubMesTypeList取数据
		
		modelAndView.addObject("getparents", getparents);
		// 指定视图
		// 下边的路径，如果在视图解析器中配置jsp路径的前缀和jsp路径的后缀，修改为
		// modelAndView.setViewName("/WEB-INF/jsp/base/submes.jsp");
		// 上边的路径配置可以不在程序中指定jsp路径的前缀和jsp路径的后缀
		modelAndView.setViewName("backstage/parents");

		return modelAndView;
	}
	
	//家长权限查询
		@RequestMapping(value = "search_parents", method = RequestMethod.POST)
		public ModelAndView search_parents(User user) throws Exception {
			String fphone=user.getFphone();
			String fname=user.getFname();
			List<User> getparents =userservice.searchparents(user);
		
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("fphone", fphone);
			modelAndView.addObject("fname", fname);
			modelAndView.addObject("getparents", getparents);
			//modelAndView.addObject("msg", msg);
			modelAndView.setViewName("backstage/parents");

			return modelAndView;
		}
	
	//家长权限更改
	@RequestMapping(value = "updateparents_right")
    public ModelAndView updateparents_right(User user) throws Exception{
	System.out.println(user.getFid());

	this.userservice.updateparents_right(user);
		
     return parents_management();
    }
	//PC后台登录
	@RequestMapping(value = "bglogin", method = RequestMethod.GET)
	public ModelAndView bglogin() throws Exception {
	
		ModelAndView modelAndView = new ModelAndView();
		
		
		modelAndView.setViewName("backstage/login");

		return modelAndView;
	}
	//登录action
	@RequestMapping(value = "login_bgmain", method = RequestMethod.POST)
	public ModelAndView login_bgmain(@Param("UserName") String UserName,@Param("UserPassWord") String UserPassWord) throws Exception {
	
		ModelAndView modelAndView = new ModelAndView();
		
		if(UserName.equals("admin")&&UserPassWord.equals("kp1976")){
			return bgmain();
		}
		else{
			
			return bglogin();
		}
	
	}
}
