package com.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.business.service.UserService;

@Controller
public class ConsultController {
	@Autowired
	private UserService userservice;

	// 家长端
	// 心理咨询-机构详情
	@RequestMapping(value = "AgencyDetailsDiv1", method = RequestMethod.GET)
	public ModelAndView AgencyDetailsDiv1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Counseling/AgencyDetailsDiv");
		return modelAndView;
	}

	// 教育咨讯
	@RequestMapping(value = "Education1", method = RequestMethod.GET)
	public ModelAndView Education1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Education/Education");
		return modelAndView;
	}

	// 咨讯详情
	@RequestMapping(value = "EducationDetails1", method = RequestMethod.GET)
	public ModelAndView EducationDetails1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Education/EducationDetails");
		return modelAndView;
	}

	// 教师端
	// 心理咨询-机构详情
	@RequestMapping(value = "AgencyDetailsDiv2", method = RequestMethod.GET)
	public ModelAndView AgencyDetailsDiv2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Counseling/AgencyDetailsDiv");
		return modelAndView;
	}

	// 教育咨讯
	@RequestMapping(value = "Education2", method = RequestMethod.GET)
	public ModelAndView Education2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Education/Education");
		return modelAndView;
	}

	// 咨讯详情
	@RequestMapping(value = "EducationDetails2", method = RequestMethod.GET)
	public ModelAndView EducationDetails2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Education/EducationDetails");
		return modelAndView;
	}
}
