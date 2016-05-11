package com.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.UserService;

@Controller
public class LearningStatisticsController {
	@Autowired
	private UserService userservice;

	// 家长端
	// 学习统计
	@RequestMapping(value = "LearningStatistics1", method = RequestMethod.GET)
	public ModelAndView LearningStatistics1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("LearningStatistics/LearningStatistics1");
		return modelAndView;
	}

	// 强化学习
	@RequestMapping(value = "ReinforcementExercises1", method = RequestMethod.GET)
	public ModelAndView ReinforcementExercises1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("LearningStatistics/ReinforcementExercises");
		return modelAndView;
	}

	// 总览
	@RequestMapping(value = "SYNOPSIS1", method = RequestMethod.GET)
	public ModelAndView SYNOPSIS1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("LearningStatistics/SYNOPSIS1");
		return modelAndView;
	}

	// 教师端
	// 学习统计
	@RequestMapping(value = "LearningStatistics2", method = RequestMethod.GET)
	public ModelAndView LearningStatistics2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("LearningStatistics/LearningStatistics2");
		return modelAndView;
	}

	// 强化学习
	@RequestMapping(value = "ReinforcementExercises2", method = RequestMethod.GET)
	public ModelAndView ReinforcementExercises2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("LearningStatistics/ReinforcementExercises");
		return modelAndView;
	}

	// 总览
	@RequestMapping(value = "SYNOPSIS2", method = RequestMethod.GET)
	public ModelAndView SYNOPSIS2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("LearningStatistics/SYNOPSIS2");
		return modelAndView;
	}
}
