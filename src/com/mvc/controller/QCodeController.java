package com.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.business.service.ExerciseService;
import com.business.service.QCodeService;
import com.business.utils.Transform;
import com.ibatis.model.QCode;
import com.ibatis.model.SubMessage;

@Controller
public class QCodeController {
	
	
	@Autowired
	private ExerciseService exerciseService;
	
	@Autowired
	private QCodeService qCodeService;
	
	//单元描述
	@RequestMapping(value = "dycode_base", method = RequestMethod.GET)
	public ModelAndView dycode_base() throws Exception {
		List<SubMessage> getdy=exerciseService.getdy();
		List<QCode> qCodes = qCodeService.selectUnitQCodeList();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dy", getdy);
		modelAndView.addObject("qCodes", qCodes);
		modelAndView.setViewName("backstage2/dy_QR");
		return modelAndView;
	}
	//添加单元
	@RequestMapping(value = "add_dycode", method = RequestMethod.GET)
	public ModelAndView add_dycode(QCode qCode) throws Exception {
		qCode.setFunitname(Transform.changeCharset(qCode.getFunitname()));
		ModelAndView modelAndView = new ModelAndView();
		if(qCodeService.isExitUnit(qCode.getFname())==null){
			qCodeService.insertUnitQCode(qCode);
			return dycode_base();
		}
		if(qCodeService.isExitUnit(qCode.getFname())!=null||!qCodeService.isExitUnit(qCode.getFname()).equals("")){
			List<SubMessage> getdy=exerciseService.getdy();
			List<QCode> qCodes = qCodeService.selectUnitQCodeList();
			modelAndView.addObject("dy", getdy);
			modelAndView.addObject("qCodes", qCodes);
			modelAndView.addObject("message", "alert('请勿重复添加');");
			modelAndView.setViewName("backstage2/dy_QR");
		}
		return modelAndView;
	}
	
	//更新单元
	@RequestMapping(value = "update_dycode", method = RequestMethod.GET)
	public ModelAndView update_dycode(QCode qCode) throws Exception {
		qCode.setFunitname(Transform.changeCharset(qCode.getFunitname()));
		ModelAndView modelAndView = new ModelAndView();
		if(qCodeService.isExitUnitDesc(qCode)==null||qCodeService.isExitUnitDesc(qCode).equals("")){
			qCodeService.updateUnitQCode(qCode);
			
			return dycode_base();
		}
		List<SubMessage> getdy=exerciseService.getdy();
		List<QCode> qCodes = qCodeService.selectUnitQCodeList();
		modelAndView.addObject("dy", getdy);
		modelAndView.addObject("qCodes", qCodes);
		modelAndView.addObject("message", "alert('单元描述已存在');");
		modelAndView.setViewName("backstage2/dy_QR");
		return modelAndView;
	}
	//删除单元
	@RequestMapping(value = "delete_dycode", method = RequestMethod.GET)
	public ModelAndView delete_dycode(QCode qCode) throws Exception {
		qCodeService.deleteUnitQCode(qCode);
		return dycode_base();
	}
	//课时描述
	@RequestMapping(value = "kscode_base", method = RequestMethod.GET)
	public ModelAndView kscode_base() throws Exception {
		
		List<SubMessage> getdy=exerciseService.getdy();
		List<SubMessage> getks=exerciseService.getks();
		List<QCode> qCodes = qCodeService.selectKSQCodeList();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dy", getdy);
		modelAndView.addObject("ks", getks);
		modelAndView.addObject("qCodes", qCodes);
		modelAndView.setViewName("backstage2/ks_QR");
		return modelAndView;
	}
	//添加课时
	@RequestMapping(value = "add_kscode", method = RequestMethod.GET)
	public ModelAndView add_kscode(QCode qCode) throws Exception {
		qCode.setFunitname(Transform.changeCharset(qCode.getFunitname()));
		qCode.setFhourname(Transform.changeCharset(qCode.getFhourname()));
		ModelAndView modelAndView = new ModelAndView();
		if(qCodeService.isExitHour(qCode.getFname())==null){
			qCodeService.insertKSQCode(qCode);
			return kscode_base();
		}
		if(qCodeService.isExitHour(qCode.getFname())!=null||!qCodeService.isExitHour(qCode.getFname()).equals("")){
			modelAndView.addObject("message", "alert('请勿重复添加');");
			List<SubMessage> getdy=exerciseService.getdy();
			List<SubMessage> getks=exerciseService.getks();
			List<QCode> qCodes = qCodeService.selectKSQCodeList();
			modelAndView.addObject("dy", getdy);
			modelAndView.addObject("ks", getks);
			modelAndView.addObject("qCodes", qCodes);
			modelAndView.setViewName("backstage2/ks_QR");
		}
		return modelAndView;
	}
	
	//更新课时
	@RequestMapping(value = "update_kscode", method = RequestMethod.GET)
	public ModelAndView update_kscode(QCode qCode) throws Exception {
		qCode.setFunitname(Transform.changeCharset(qCode.getFunitname()));
		qCode.setFhourname(Transform.changeCharset(qCode.getFhourname()));
		ModelAndView modelAndView = new ModelAndView();
		if(qCodeService.isExitHourDesc(qCode)==null||qCodeService.isExitHourDesc(qCode).equals("")){
			qCodeService.updateHourQCode(qCode);
			return kscode_base();
		}
		List<SubMessage> getdy=exerciseService.getdy();
		List<SubMessage> getks=exerciseService.getks();
		List<QCode> qCodes = qCodeService.selectKSQCodeList();
		modelAndView.addObject("dy", getdy);
		modelAndView.addObject("ks", getks);
		modelAndView.addObject("qCodes", qCodes);
		modelAndView.addObject("message", "alert('课时描述已存在');");
		modelAndView.setViewName("backstage2/ks_QR");
		return modelAndView;
	}
	
	//删除课时
	@RequestMapping(value = "delete_kscode", method = RequestMethod.GET)
	public ModelAndView delete_kscode(QCode qCode) throws Exception {
		qCodeService.deleteHourQCode(qCode);
		return kscode_base();
	}
	
	//获取单元
	@RequestMapping(value = "getUnit",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject getUnit(QCode qCode) throws Exception {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("getUnit", qCodeService.getDyDesc(qCode));
		return jsonObject;
	}
	

	//获取课时
	@RequestMapping(value = "getHour",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject getHour(QCode qCode) throws Exception {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("getHour", qCodeService.getKsDesc(qCode));
		return jsonObject;
	}
	
}
