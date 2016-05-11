package com.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.business.service.ExerciseService;
import com.business.service.GamesOneService;
import com.ibatis.model.Games;
import com.ibatis.model.GamesOne;

@Controller
public class GamesOneDao {
	@Autowired
	private GamesOneService gamesOneService;

	// 小游戏
	@RequestMapping(value = "Games_data", produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject Games_data(Games games)
			throws Exception {
		JSONObject jsonObject = new JSONObject();
		
		
		if (games.getFJudgeGames() == 2) {
			gamesOneService.insertGamesOne(games);
			jsonObject.put("message", "错题记录成功");
		} else if (games.getFJudgeGames() == 1) {
			jsonObject.put("message", "记录成功");
		}
		else{
			jsonObject.put("msg", "你传入的参数有误，请重新输入！");	
		}
		return jsonObject;
	}
	// 小游戏
	@RequestMapping(value = "Games_look", produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject Games_look(GamesOne gamesOne, Games games)
			throws Exception {
		JSONObject jsonObject = new JSONObject();
		List<GamesOne> selectGamesOne = gamesOneService.selectGamesOne(gamesOne);
		int Count = 0;
		List<Games> select_GamesOne = gamesOneService.select_GamesOne(games);
		for (Games games2 : select_GamesOne) {
			if (games2.getFphone().equals(games.getFphone())) {
				Count++;
			}
		}
		if (Count!=0) {
			gamesOneService.delete_GamesOne(games);
		}
		jsonObject.put("selectGamesOne", selectGamesOne);
		jsonObject.put("msg", "操作成功");
		return jsonObject;
	}
	/*// 判断数据库是否有垃圾数据
	@RequestMapping(value = "data", produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject data(GamesOne gamesOne,Games games,HttpServletRequest request,HttpServletResponse response)throws Exception {
		JSONObject jsonObject = new JSONObject();
		int Count = 0;
		List<Games> select_GamesOne = gamesOneService.select_GamesOne(games);
		for (Games games2 : select_GamesOne) {
			if (games2.getFphone().equals(games.getFphone())) {
				Count++;
			}
		}
		if (Count!=0) {
			jsonObject.put("msg", "温馨提示：你上次离开的时候还有"+Count+"个错题还没做完，请问是否继续！");
			if (games.getFJudgeGames()==6) {
				gamesOneService.delete_GamesOne(games);
				jsonObject.put("message", "错题数据已经全部清空！");
			}else if(games.getFJudgeGames()==5){
				jsonObject.put("message", "跳转成功");
				response.sendRedirect("JudgeGames.do?fphone="+games.getFphone());
			}
		}if (Count==0) {
			jsonObject.put("message", "跳转成功");
			response.sendRedirect("Games_data.do?FQRCode1="+gamesOne.getFQRCode1());
		}
		return jsonObject;
	}*/
	
	// 删除小游戏
	@RequestMapping(value = "Games_Wrong",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject Games_Wrong(Games games)throws Exception{
	JSONObject jsonObject =new JSONObject();
	System.out.println(games.getFphone());
	
		 if (games.getFJudgeGames()==1) {
		jsonObject.put("message", "操作成功");
		gamesOneService.deleteGamesOne(games);
	}else if (games.getFJudgeGames()==2){
		jsonObject.put("message", "操作成功");
	}
	else{
		jsonObject.put("msg", "你传入的参数有误，请重新输入！");
	}
	return jsonObject;
	}// 小游戏
	@RequestMapping(value = "Games_Judge",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject Games_Judge(Games games)throws Exception{
	JSONObject jsonObject =new JSONObject();
	int Count = 0;
	List<Games> select_GamesOne = gamesOneService.select_GamesOne(games);
	for (Games games2 : select_GamesOne) {
		if (games2.getFphone().equals(games.getFphone())) {
			Count++;
		}
	}
	
	jsonObject.put("select_GamesOne", select_GamesOne);
	if (Count!=0) {
		jsonObject.put("Count", "错了"+Count+"题");
	}else{
		jsonObject.put("msg", "恭喜你，全答对了");
	}
	
	
		
	return jsonObject;
	}
	
}
