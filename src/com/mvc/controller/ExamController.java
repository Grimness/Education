package com.mvc.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.record.LeftMarginRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.ExerciseService;
import com.business.utils.Transform;
import com.ibatis.model.Exercise;

@Controller
public class ExamController {
	@Autowired
	private ExerciseService exerciseService;
	
	@RequestMapping(value = "exam/toqrcode", method = RequestMethod.GET)
	public ModelAndView exercise(String  qrcode) throws Exception {
		String strType="";
		strType=qrcode.substring(0,2);
		List<Exercise> lstExercises=null;
		
		ModelAndView modelAndView = new ModelAndView();
		
		switch(strType){
		case "NN":
			//总码
			lstExercises=exerciseService.getExerciseByQRCode(qrcode);
			modelAndView.addObject("exercise", lstExercises);
			modelAndView.setViewName("exam/volume");
			break;
		case "WK":	
			//微课
			lstExercises=exerciseService.getExerciseByQRCodeWK(qrcode);
			modelAndView.addObject("exercise", lstExercises);			
			modelAndView.setViewName("exam/exercise");
			break;
		default:
			if(qrcode.substring(qrcode.length()-2,qrcode.length()).equals("01")){
				//单元
				lstExercises=exerciseService.getExerciseByQRCodeUnit(qrcode);
				modelAndView.addObject("exercise", lstExercises);
				modelAndView.setViewName("exam/unit");
			}else{
				//课时
				Exercise getKSpng=exerciseService.getKSByQRCodeHour(qrcode);
				lstExercises=exerciseService.getExerciseByQRCodeHour(qrcode);
				modelAndView.addObject("exercise", lstExercises);	
				modelAndView.addObject("KS", getKSpng);	
				modelAndView.setViewName("exam/exercise");
			}
			
			break;
		
		
		}
		System.out.println(qrcode);

		//modelAndView.addObject("exercise", exercise);


		return modelAndView;
	}
	//扫码记录
	@RequestMapping(value = "exam/qrcode_Record", method = RequestMethod.GET)
	public ModelAndView qrcode_Record(String  fphone) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		
		
		modelAndView.setViewName("exam/qrcode_Record");
		return modelAndView;
	}
	
	
	//播放
	@RequestMapping(value = "exam/play", method = RequestMethod.GET)
	public ModelAndView play(@Param("fid")int fid) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Exercise exercise = exerciseService.getExerciseByID(fid);
		modelAndView.addObject("eMusic", exercise);
		modelAndView.setViewName("exam/play");
		return modelAndView;
	}
	
}
