package com.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.UserService;

@Controller
public class ResourceBundleController {
	@Autowired
	private UserService userservice;

	// 家长端
	// 资源包
	@RequestMapping(value = "ResourceBundle1", method = RequestMethod.GET)
	public ModelAndView ResourceBundle1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/ResourceBundle");
		return modelAndView;
	}

	// 资源（语文-小学词语）
	@RequestMapping(value = "resource1", method = RequestMethod.GET)
	public ModelAndView resource1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/resource");
		return modelAndView;
	}

	// 详情
	@RequestMapping(value = "Details1", method = RequestMethod.GET)
	public ModelAndView Details1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/Details");
		return modelAndView;
	}

	// 我的下载
	@RequestMapping(value = "download1", method = RequestMethod.GET)
	public ModelAndView download1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/download");
		return modelAndView;
	}

	// 详情
	@RequestMapping(value = "Details2", method = RequestMethod.GET)
	public ModelAndView Details2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/Details");
		return modelAndView;
	}

	// 教师端
	// 资源包
	@RequestMapping(value = "ResourceBundle2", method = RequestMethod.GET)
	public ModelAndView ResourceBundle2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/ResourceBundle");
		return modelAndView;
	}

	// 资源（语文-小学词语）
	@RequestMapping(value = "resource2", method = RequestMethod.GET)
	public ModelAndView resource2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/resource");
		return modelAndView;
	}

	// 详情
	@RequestMapping(value = "Details3", method = RequestMethod.GET)
	public ModelAndView Details3() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/Details");
		return modelAndView;
	}

	// 我的下载
	@RequestMapping(value = "download2", method = RequestMethod.GET)
	public ModelAndView download2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/download");
		return modelAndView;
	}

	// 详情
	@RequestMapping(value = "Details4", method = RequestMethod.GET)
	public ModelAndView Details4() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ResourceBundle/Details");
		return modelAndView;
	}
}
