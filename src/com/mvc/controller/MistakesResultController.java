package com.mvc.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;





import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.business.service.MistakesService;
import com.ibatis.model.Exercise;
import com.ibatis.model.MistakesResult;

@Controller
public class MistakesResultController {	
	
	@Autowired
	private MistakesService mistakesService;
	
	
	//错题库
		//保存接口
	@RequestMapping(value = "saveMistake",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject saveMistake(MistakesResult mistakesResult,String[] fexercisID,String[] fresult){
		JSONObject jsonObject = new JSONObject();
		for(int i = 0 ; i<fexercisID.length;i++){
			mistakesResult.setFExericsID(fexercisID[i]);
			mistakesResult.setFResult(fresult[i]);
			Date date=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			mistakesResult.setFDate(sdf.format(date));
			mistakesService.insertMistakesResult(mistakesResult);
		}
		jsonObject.put("message", "保存成功");
		return jsonObject;
	}
	

	

	//错题库
		/*	//根据筛选返回不同的数据??
		@RequestMapping(value = "selectMistake",produces = "application/json; charset=utf-8")
		@ResponseBody
		public JSONObject saveMistake(Exercise exercise){
			JSONObject jsonObject = new JSONObject();
			
			jsonObject.put("message", "保存成功");
			return jsonObject;
		}*/
	

	//错题库
	
	//小孩易错题
	@RequestMapping(value = "WrongQuestion2", method = RequestMethod.GET)
	public ModelAndView WrongQuestion(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		List<MistakesResult> childMistakes = mistakesService.getFChildMistakes(FStudentID);
		modelAndView.addObject("Mistakes", childMistakes);
		modelAndView.addObject("FStudentID", FStudentID);
		modelAndView.addObject("FPhone", FPhone);
		modelAndView.setViewName("task/WrongQuestion");
		return modelAndView;
	}
	
	//班级易错题
	@RequestMapping(value = "WrongQuestionByClass", method = RequestMethod.GET)
	public ModelAndView WrongQuestionByClass(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		String classid = mistakesService.findClass(FStudentID);
		List<MistakesResult> classMistakes = mistakesService.getmistakesClassList(classid);
		modelAndView.addObject("Mistakes", classMistakes);
		modelAndView.addObject("FStudentID", FStudentID);
		modelAndView.addObject("FPhone", FPhone);
		modelAndView.setViewName("task/WrongQuestion");
		return modelAndView;
	}	

	//小孩移除错题
	@RequestMapping(value = "RemoveChildQuestion", method = RequestMethod.GET)
	public ModelAndView RemoveChildQuestion(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		List<MistakesResult> childMistakes = mistakesService.getFChildMistakes(FStudentID);
		modelAndView.addObject("Mistakes", childMistakes);
		modelAndView.addObject("FStudentID", FStudentID);
		modelAndView.addObject("FPhone", FPhone);
		modelAndView.setViewName("task/RemoveQuestion");
		return modelAndView;
	}
	
	//班级移除错题
	@RequestMapping(value = "RemoveClassQuestion", method = RequestMethod.GET)
	public ModelAndView RemoveClassQuestion(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		String classid = mistakesService.findClass(FStudentID);
		List<MistakesResult> classMistakes = mistakesService.getmistakesClassList(classid);
		modelAndView.addObject("Mistakes", classMistakes);
		modelAndView.addObject("FStudentID", FStudentID);
		modelAndView.addObject("FPhone", FPhone);
		modelAndView.setViewName("task/RemoveClassQuestion");
		return modelAndView;
	}
	
	//移除小孩错题确定接口
	@RequestMapping(value = "RemoveChildWrong", method = RequestMethod.POST)
	public ModelAndView RemoveChildWrong(String[] FExericsID,String[] selectFlag,@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		int count = 0;
		if(selectFlag.length!=0&&FExericsID.length!=0){
		
			for(int i = 0 ; i < selectFlag.length ; i++){
				if(selectFlag[i].equals("1")){
					mistakesService.removeChildMistakesList(FExericsID[i], FStudentID);
					count++;
				}
			}
		}
		modelAndView.addObject("message", "alert(\"恭喜小孩掌握了"+count+"道易错题，继续加油哦！\")");
		List<MistakesResult> childMistakes = mistakesService.getFChildMistakes(FStudentID);
		modelAndView.addObject("Mistakes", childMistakes);
		modelAndView.addObject("FStudentID", FStudentID);
		modelAndView.addObject("FPhone", FPhone);
		modelAndView.setViewName("task/WrongQuestion");
		return modelAndView;
	}
	
	
	
	/*//移除班级错题确定接口
		@RequestMapping(value = "RemoveClassWrong",produces = "application/json; charset=utf-8")
		@ResponseBody
		public JSONObject RemoveClassWrong(String[] FExericsID,String[] selectFlag) {
			JSONObject jsonObject = new JSONObject();
			for(int i = 0 ; i < selectFlag.length ; i++){
				if(selectFlag[i].equals("1")){
					mistakesService.removeClassMistakesList(FExericsID[i]);
				}
			}
			jsonObject.put("message", "保存成功");
			return jsonObject;
		}
	*/
	
	//错题答案
		@RequestMapping(value = "WrongQuestionAns", method = RequestMethod.GET)
		public ModelAndView WrongQuestionAns(@Param("FExericsID")String FExericsID) throws Exception {
			ModelAndView modelAndView = new ModelAndView();
			Exercise exercise  = mistakesService.getmistakesAns(FExericsID);
			modelAndView.addObject("getAns", exercise);
			modelAndView.setViewName("task/CheckAnswer");
			return modelAndView;
		}
		
		
	
}
