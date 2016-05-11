package com.mvc.controller;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.business.service.PointService;
import com.ibatis.model.json.Points;
import com.ibatis.model.json.PointsList;

@Controller
public class PointController {

	/*//积分规则
	private final int COMSUME = 0;//兑换
	private final int REGISTER = 1;//注册
	private final int INSERTORUPDATE = 2;//完善/更新个人资料
	private final int QIANDAO = 3;//签到
	private final int INVITE = 4;//邀请好友
	private final int SHARE = 5;//分享朋友圈
	private final int CHECK = 6;//家长作业检查
	private final int SUBMIT = 7;//提交作业
	private final int PERFECT = 8;//作业满分
	private final int UPLOAD = 9;//资源上传
	private final int CONSULT = 10;//留言和反馈
*/	
	@Autowired
	private PointService pointService;
	
	//积分添加
	@RequestMapping(value = "point_add", method = RequestMethod.GET)
	@ResponseBody  	
	public JSONObject point_add(@Param("fphone") String fphone,@Param("fsource") String fsource){
		JSONObject jsonObject=new JSONObject();
	
		//添加积分记录
		pointService.addPointsList(fphone, fsource);
		jsonObject.put("success","成功，\n您将获得5个积分！");
		
		
		return jsonObject;
	}
	
	//个人中心---我的积分
		@RequestMapping(value = "user_points", method = RequestMethod.GET)
		@ResponseBody  	
		public JSONObject user_points(@Param("fphone") String fphone){
			JSONObject jsonObject=new JSONObject();
			
			int total = 0;//总积分
			//计算总积分
			if(pointService.sumPointconsume(fphone)!=null){
			 total = Integer.parseInt(pointService.sumPointadd(fphone))-Integer.parseInt(pointService.sumPointconsume(fphone));
			}else{
				total = Integer.parseInt(pointService.sumPointadd(fphone));
			}
			//添加总积分
			if(pointService.getPoints(fphone) == null){//未存在时插入 存在时更新
				pointService.addPointsALL(fphone, total+"");
			}else{
				pointService.updatePoints(fphone, total+"");
			}
			
			Points  getpoint = pointService.getPoints(fphone);
			List<PointsList> getconsumelist = pointService.getConsumePointList(fphone);	
			List<PointsList> getaddlist = pointService.getConsumePointList(fphone);	
			
			jsonObject.put("points",getpoint);//总分
			jsonObject.put("consumelist",getconsumelist);//消费的积分
			jsonObject.put("addlist",getaddlist);//添加的积分
			
		
			return jsonObject;
		}
		
		
		

		//个人中心 ---我的积分---兑换礼品---兑换
		/**
		 * 兑换
		 * @param Fparentid 手机号
		 * @param fpoints 积分
		 * @param fcrash 现金券
		 * @return
		 */
		@RequestMapping(value = "comsummes_point", method = RequestMethod.GET)
		@ResponseBody  	
		public JSONObject comsummes_point(@Param("fphone") String fphone,@Param("fpoints") int fpoints,@Param("fcrash") int fcrash){
			JSONObject jsonObject=new JSONObject();
			int total = 0;//总积分 = 获取的积分-消费积分
			total =  Integer.parseInt(pointService.sumPointadd(fphone))-Integer.parseInt(pointService.sumPointconsume(fphone));
			
			if(total<0||total-fpoints<0){
				jsonObject.put("message","您当前的积分不足，\n不能兑换礼品!");
			}else{
			
				pointService.comsumePoints(fphone, fpoints+"");	//兑换积分
				total =  Integer.parseInt(pointService.sumPointadd(fphone))-Integer.parseInt(pointService.sumPointconsume(fphone));
				pointService.updatePoints(fphone, total+"");//更新总积分
				jsonObject.put("total",total+"");
				SimpleDateFormat sf = new SimpleDateFormat("yyyy年MM月dd日hh:mm");
			    Calendar c = Calendar.getInstance();
		        c.add(Calendar.DAY_OF_MONTH, 7);//有效期
				jsonObject.put("message","您已成功消耗"+fpoints+"积分兑换"+fcrash+"元现金券;请于"+sf.format(c.getTime())+"前到xxx书店领取!");
			}
			
			return jsonObject;
		}
		
		
		
}
