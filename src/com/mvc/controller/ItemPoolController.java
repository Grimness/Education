package com.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.business.service.UserService;

@Controller
public class ItemPoolController {
	@Autowired
	private UserService userservice;

	// 教师端
	// 题库和组卷
	@RequestMapping(value = "ItemPool", method = RequestMethod.GET)
	public ModelAndView ItemPool() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ItemPool/ItemPool");
		return modelAndView;
	}

	// 查看解析
	@RequestMapping(value = "CheckAnswer1", method = RequestMethod.GET)
	public ModelAndView CheckAnswer1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("task/CheckAnswer");
		return modelAndView;
	}

	// 搜索
	@RequestMapping(value = "Search", method = RequestMethod.GET)
	public ModelAndView Search() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ItemPool/Search");
		return modelAndView;
	}

	// 搜索结果
	@RequestMapping(value = "SearchResult", method = RequestMethod.GET)
	public ModelAndView SearchResult() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ItemPool/SearchResult");
		return modelAndView;
	}

	// 我要组卷
	@RequestMapping(value = "GeneratingPaper", method = RequestMethod.GET)
	public ModelAndView GeneratingPaper() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ItemPool/GeneratingPaper");
		return modelAndView;
	}

	// 查看解析
	@RequestMapping(value = "CheckAnswer2", method = RequestMethod.GET)
	public ModelAndView CheckAnswer2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("task/CheckAnswer");
		return modelAndView;
	}

	// 当前试卷
	@RequestMapping(value = "QuestionPaper", method = RequestMethod.GET)
	public ModelAndView QuestionPaper() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ItemPool/QuestionPaper");
		return modelAndView;
	}

	// 试卷详情
	@RequestMapping(value = "PaperDetails", method = RequestMethod.GET)
	public ModelAndView PaperDetails() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ItemPool/PaperDetails");
		return modelAndView;
	}
}
