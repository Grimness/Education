package com.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.UserService;

@Controller
public class MyCenterController {
	@Autowired
	private UserService userservice;

	// 个人中心-家长端
	// 添加另一个孩子账号
	@RequestMapping(value = "AddUsers", method = RequestMethod.GET)
	public ModelAndView AddUsers() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/AddUsers");
		return modelAndView;
	}

	// 我的收藏
	@RequestMapping(value = "collect", method = RequestMethod.GET)
	public ModelAndView collect() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/collect");
		return modelAndView;
	}

	// 查看答案
	@RequestMapping(value = "CheckAnswer", method = RequestMethod.GET)
	public ModelAndView CheckAnswer() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("task/CheckAnswer");
		return modelAndView;
	}

	// 机构详情
	@RequestMapping(value = "AgencyDetailsDiv3", method = RequestMethod.GET)
	public ModelAndView AgencyDetailsDiv3() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Counseling/AgencyDetailsDiv");
		return modelAndView;
	}

	// 我的积分
	@RequestMapping(value = "MyPoints1", method = RequestMethod.GET)
	public ModelAndView MyPoints1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/MyPoints");
		return modelAndView;
	}

	// 积分规则
	@RequestMapping(value = "IntegralRule1", method = RequestMethod.GET)
	public ModelAndView IntegralRule1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/IntegralRule");
		return modelAndView;
	}

	// 兑换礼品
	@RequestMapping(value = "CashGift1", method = RequestMethod.GET)
	public ModelAndView CashGift1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/CashGift");
		return modelAndView;
	}

	// 消息通知
	@RequestMapping(value = "NotifierPro1", method = RequestMethod.GET)
	public ModelAndView NotifierPro1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/NotifierPro");
		return modelAndView;
	}

	// 帮助
	// 新手引导
	@RequestMapping(value = "NewbieGuide1", method = RequestMethod.GET)
	public ModelAndView NewbieGuide1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AppHelp/NewbieGuide");
		return modelAndView;
	}

	// 常见问题
	@RequestMapping(value = "FAQ1", method = RequestMethod.GET)
	public ModelAndView FAQ1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AppHelp/FAQ");
		return modelAndView;
	}

	// 版权说明
	@RequestMapping(value = "Copyright1", method = RequestMethod.GET)
	public ModelAndView Copyright1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AppHelp/Copyright");
		return modelAndView;
	}

	// 信息安全
	@RequestMapping(value = "InformationSecurity1", method = RequestMethod.GET)
	public ModelAndView InformationSecurity1() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AppHelp/InformationSecurity");
		return modelAndView;
	}

	// 个人中心-教师端
	// 机构详情
	@RequestMapping(value = "AgencyDetailsDiv4", method = RequestMethod.GET)
	public ModelAndView AgencyDetailsDiv4() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Counseling/AgencyDetailsDiv");
		return modelAndView;
	}

	// 我的积分
	@RequestMapping(value = "MyPoints2", method = RequestMethod.GET)
	public ModelAndView MyPoints2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/MyPoints");
		return modelAndView;
	}

	// 积分规则
	@RequestMapping(value = "IntegralRule2", method = RequestMethod.GET)
	public ModelAndView IntegralRule2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/IntegralRule");
		return modelAndView;
	}

	// 兑换礼品
	@RequestMapping(value = "CashGift2", method = RequestMethod.GET)
	public ModelAndView CashGift2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/CashGift");
		return modelAndView;
	}

	// 消息通知
	@RequestMapping(value = "NotifierPro2", method = RequestMethod.GET)
	public ModelAndView NotifierPro2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("MyCenter/NotifierPro");
		return modelAndView;
	}

	// 帮助
	// 新手引导
	@RequestMapping(value = "NewbieGuide2", method = RequestMethod.GET)
	public ModelAndView NewbieGuide2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AppHelp/NewbieGuide");
		return modelAndView;
	}

	// 常见问题
	@RequestMapping(value = "FAQ2", method = RequestMethod.GET)
	public ModelAndView FAQ2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AppHelp/FAQ");
		return modelAndView;
	}

	// 版权说明
	@RequestMapping(value = "Copyright2", method = RequestMethod.GET)
	public ModelAndView Copyright2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AppHelp/Copyright");
		return modelAndView;
	}

	// 信息安全
	@RequestMapping(value = "InformationSecurity2", method = RequestMethod.GET)
	public ModelAndView InformationSecurity2() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AppHelp/InformationSecurity");
		return modelAndView;
	}

}
