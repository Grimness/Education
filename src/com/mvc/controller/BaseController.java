package com.mvc.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.ExerciseService;

import com.ibatis.model.SubMessage;


@Controller
public class BaseController {
	@Autowired
	private ExerciseService exerciseService;
	//单元管理
	@RequestMapping(value = "dy_base", method = RequestMethod.GET)
	public ModelAndView dy_base() throws Exception {
		List<SubMessage> getdy=exerciseService.getdy();
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("dy", getdy);
		modelAndView.setViewName("backstage/dy_base");

		return modelAndView;
	}
	//单元删除
	@RequestMapping(value = "deldy", method = RequestMethod.GET)
	public ModelAndView deldy(SubMessage subMessage) throws Exception {
		this.exerciseService.deldy(subMessage);
		return dy_base();
	}
	//单元修改
	@RequestMapping(value = "changedy", method = RequestMethod.GET)
	public ModelAndView changedy(@Param(value = "fid")String fid,@Param(value = "FNumber")String FNumber,@Param(value = "FName")String FName,SubMessage subMessage) throws Exception {
		
		this.exerciseService.changedy(fid, FNumber, FName);
	
	
		return dy_base();
	}
	//课时管理
	
		@RequestMapping(value = "ks_base", method = RequestMethod.GET)
		public ModelAndView ks_base() throws Exception {
			List<SubMessage> getks=exerciseService.getks();
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("ks", getks);
			modelAndView.setViewName("backstage/ks_base");

			return modelAndView;
		}
		//课时删除
		@RequestMapping(value = "delks", method = RequestMethod.GET)
		public ModelAndView delks(SubMessage subMessage) throws Exception {
			this.exerciseService.deldy(subMessage);
			return ks_base();
		}
		//课时修改
		@RequestMapping(value = "changeks", method = RequestMethod.GET)
		public ModelAndView changeks(@Param(value = "fid")String fid,@Param(value = "FNumber")String FNumber,@Param(value = "FName")String FName,SubMessage subMessage) throws Exception {
			
			this.exerciseService.changedy(fid, FNumber, FName);
		
		
			return ks_base();
		}
		//新增课时
		@RequestMapping(value = "add_ks", method = RequestMethod.GET)
		public ModelAndView ks_add() throws Exception {
			
			ModelAndView modelAndView = new ModelAndView();
			
			
			modelAndView.setViewName("backstage/add_ks");

			return modelAndView;
		}
		//新增课时成功操作
		@RequestMapping(value = "add_ks_fin", method = RequestMethod.POST)
		public ModelAndView add_ks_fin(SubMessage subMessage) throws Exception {
			SubMessage kscheck=exerciseService.kscheck(subMessage);
			String msg=null;
			ModelAndView modelAndView = new ModelAndView();
			if(kscheck!=null){
			msg="alert('编号已存在');";
			modelAndView.addObject("msg", msg);
			modelAndView.setViewName("backstage/add_ks");
			return modelAndView;
			}
			else{
			this.exerciseService.addks(subMessage);
			return ks_base();
				
			}
			
		}
		//新增单元
				@RequestMapping(value = "add_dy", method = RequestMethod.GET)
				public ModelAndView dy_add() throws Exception {
					
					ModelAndView modelAndView = new ModelAndView();
					
					
					modelAndView.setViewName("backstage/add_dy");

					return modelAndView;
				}
				//新增单元成功操作
				@RequestMapping(value = "add_dy_fin", method = RequestMethod.POST)
				public ModelAndView add_dy_fin(SubMessage subMessage) throws Exception {
					SubMessage dycheck=exerciseService.dycheck(subMessage);
					String msg=null;
					ModelAndView modelAndView = new ModelAndView();
					if(dycheck!=null){
					msg="alert('编号已存在');";
					modelAndView.addObject("msg", msg);
					modelAndView.setViewName("backstage/add_dy");
					return modelAndView;
					}
					else{
					this.exerciseService.adddy(subMessage);
					return dy_base();
						
					}
					
				}
}
