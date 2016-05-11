package com.mvc.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.ChildService;
import com.business.service.ERecordService;
import com.business.utils.Transform;
import com.ibatis.model.ERecord;
import com.ibatis.model.FChild;

@Controller
public class ERecordController {
	@Autowired
	private ERecordService eRecordService;
	@Autowired
	private ChildService childService;
	
	//家长端
	
	//电子档案
	@RequestMapping(value = "ElectronicArchives1", method = RequestMethod.GET)
	public ModelAndView Student_ERecord(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone){
		ModelAndView modelAndView = new ModelAndView();	
		List<String> dates = eRecordService.dateGroupERecord(FStudentID);
		Map<String,List<ERecord>> eRecordLists = new HashMap<String,List<ERecord>>();
		for (String string : dates) {
			List<ERecord> e  = eRecordService.studentERecordListByDate(FStudentID, string);
			for (ERecord eRecord : e) {
				if(eRecord.getFweek()==null)
					continue;
				eRecord.setFweek(Transform.transWeek(Integer.parseInt(eRecord.getFweek())));
			}
			eRecordLists.put(string, e);
		}
		modelAndView.setViewName("mixed-ability/ElectronicArchives1");
		modelAndView.addObject("ERecords", eRecordLists);
		modelAndView.addObject("Edates", dates);
		return modelAndView;
	}
	
	//教师端
	//电子档案
		@RequestMapping(value = "ElectronicArchives2", method = RequestMethod.GET)
		public ModelAndView Student_ERecord2(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone){
			ModelAndView modelAndView = new ModelAndView();	
			List<String> dates = eRecordService.dateGroupERecord(FStudentID);
			Map<String,List<ERecord>> eRecordLists = new HashMap<String,List<ERecord>>();
			for (String string : dates) {
				List<ERecord> e  = eRecordService.studentERecordListByDate(FStudentID, string);
				for (ERecord eRecord : e) {
					if(eRecord.getFweek()==null)
						continue;
					eRecord.setFweek(Transform.transWeek(Integer.parseInt(eRecord.getFweek())));
				}
				eRecordLists.put(string, e);
			}
			modelAndView.setViewName("mixed-ability/ElectronicArchives2");	
			modelAndView.addObject("ERecords", eRecordLists);
			modelAndView.addObject("Edates", dates);
			return modelAndView;
		}
	
	//家长端
		//电子档案详情
		/**
		 * 电子档案详情
		 * @param ferid 档案id
		 * @return
		 */
		@RequestMapping(value = "ElectronicArchivesDetails1", method = RequestMethod.GET)
		public ModelAndView ERecordDetail(@Param("ferid")String ferid){
			ModelAndView modelAndView = new ModelAndView();	
			
			List<ERecord> eRecordDetail = eRecordService.studentERecord(ferid);
			FChild student = childService.getChildByID(eRecordDetail.get(0).getFStudentID());
			modelAndView.addObject("ERecordDetail", eRecordDetail);
			modelAndView.addObject("student", student);
			modelAndView.setViewName("mixed-ability/ElectronicArchivesDetails1");
			return modelAndView;
		}
		
	//教师端
	//电子档案详情
	/**
	 * 电子档案详情
	 * @param ferid 档案id
	 * @return
	 */
	@RequestMapping(value = "ElectronicArchivesDetails2", method = RequestMethod.GET)
	public ModelAndView ERecordDetail2(@Param("ferid")String ferid){
		ModelAndView modelAndView = new ModelAndView();	
		
		List<ERecord> eRecordDetail = eRecordService.studentERecord(ferid);
	
		FChild student = childService.getChildByID(eRecordDetail.get(0).getFStudentID());
		modelAndView.addObject("ERecordDetail", eRecordDetail);
		modelAndView.addObject("student", student);
		modelAndView.setViewName("mixed-ability/ElectronicArchivesDetails2");
		return modelAndView;
	}
	
	
	

	
	
	/**
	 * 保存电子档案
	 * @param ERecord 学生档案信息 (调用时需要传递学生id)
	 * @return
	 */
	@RequestMapping(value = "ERecordSave", method = RequestMethod.POST)
	public ModelAndView ERecordSave(ERecord eRecord,@Param("FPhone")String FPhone){
		ModelAndView modelAndView = new ModelAndView();	
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		eRecord.setFDate(sdf.format(date));
		FChild student = childService.getChildByID(eRecord.getFStudentID());
		int month = Integer.parseInt(sdf.format(date).substring(5, 7));
		String trem = "下学期";
		if(month<=2||month>=9){
			 trem="上学期";
		}
		String ftitle = student.getFgradename()+trem+"学习档案";
		eRecord.setFTitle(ftitle);
		if(eRecordService.getERecordId(ftitle)==null){//档案不存在
			eRecordService.insertERecord(eRecord);
		}
			//获取档案id
			String fid = eRecordService.getERecordId(ftitle);
			eRecord.setFERID(fid);
			//档案记录不存在
			if(eRecordService.isExitRecordList(fid, eRecord.getFSubjectID())==null){
				eRecordService.insertERecordList(eRecord);
			}else{
				//存在档案记录
				eRecordService.updateRecordList(eRecord);
			}
		modelAndView.addObject("message", "保存成功");
		return Student_ERecord2(eRecord.getFStudentID(), FPhone);
	}
	
	
	//教师端  填写电子档案
	@RequestMapping(value = "FileFilledBy", method = RequestMethod.GET)
	public ModelAndView FileFilledBy(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone){
		ModelAndView modelAndView = new ModelAndView();	
		FChild student = childService.getChildByID(FStudentID);
		String subject = eRecordService.teacherSubject(FPhone);
		modelAndView.addObject("student", student);
		modelAndView.addObject("subject", subject);
		modelAndView.setViewName("mixed-ability/FileFilledBy");
		return modelAndView;
	}
	
	//综合评测
		@RequestMapping(value = "Evaluation1", method = RequestMethod.GET)
		public ModelAndView Evaluation1(@Param("FStudentID")String FStudentID){
			ModelAndView modelAndView = new ModelAndView();	
			modelAndView.setViewName("mixed-ability/Evaluation1");
			return modelAndView;
		}
	
}
