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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.business.service.ScanService;
import com.business.utils.Transform;
import com.ibatis.model.ScanRecord;

@Controller
public class ScanRecordController {
	@Autowired
	private ScanService scanService;
	
	
	
	@RequestMapping(value = "addScanRecord",produces = "application/json; charset=utf-8")
	@ResponseBody
	public JSONObject addScanRecord(ScanRecord scanRecord){
		JSONObject jsonObject = new JSONObject();
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		scanRecord.setFdate(sdf.format(date));
		scanService.insertScanRecord(scanRecord);
		jsonObject.put("message", "添加成功");
		return jsonObject;
	}
	
	@RequestMapping(value = "scanRecord", method = RequestMethod.GET)
	public ModelAndView scanRecord(@Param("FPhone")String FPhone){
		ModelAndView modelAndView = new ModelAndView();
		Map<String, List<ScanRecord>> ms = new HashMap<String, List<ScanRecord>>();
		List<String> dates = scanService.dateGroupSRecord(FPhone);
		List<ScanRecord> fqcode = scanService.getQRCode(FPhone);//总码
		if(fqcode.size()>0){//是否有总码的记录
			for (ScanRecord scanRecord : fqcode) {
				scanRecord.setFweek(Transform.transWeek(Integer.parseInt(scanRecord.getFweek())));
				scanRecord.setFtitle(scanService.getTitleName(scanRecord.getFname()));
			}
		}
		for (String string : dates) {
			
			List<ScanRecord> ls = scanService.selectSRListByDate(FPhone, string);
			for (ScanRecord s : ls) {
				if(s.getFweek()==null||s.getFweek().contains("星期"))
					continue;
				s.setFweek(Transform.transWeek(Integer.parseInt(s.getFweek())));
			}
			for (ScanRecord sr : fqcode) {
				if(sr.getFdate().equals(string)){
					ls.add(sr);
				}
			}
			ms.put(string, ls);
		}
		modelAndView.addObject("FPhone",FPhone);
		modelAndView.addObject("dates", dates);
		modelAndView.addObject("scanRecord", ms);
		modelAndView.setViewName("exam/qrecord");
		return modelAndView;
	}
	
}
