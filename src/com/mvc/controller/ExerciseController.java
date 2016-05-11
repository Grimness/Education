package com.mvc.controller;

import java.io.File;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import oracle.sql.ARRAY;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sun.org.mozilla.javascript.internal.regexp.SubString;

import com.business.service.ExerciseService;
import com.business.service.UserService;
import com.business.utils.Mysql;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.ibatis.model.Examination;
import com.ibatis.model.ExaminationList;
import com.ibatis.model.Exercise;
import com.ibatis.model.Exercisetem;
import com.ibatis.model.Games;
import com.ibatis.model.Material;
import com.ibatis.model.SubMessage;
import com.sun.org.apache.xml.internal.utils.URI;


@Controller
public class ExerciseController {
	@Autowired
	private ExerciseService exerciseService;
	//题库导入主界面
	@RequestMapping(value = "exercise", method = RequestMethod.GET)
	public ModelAndView exercise() throws Exception {
		List<SubMessage> getdy=exerciseService.getdy();
		List<SubMessage> getks=exerciseService.getks();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dy", getdy);
		modelAndView.addObject("ks", getks);
		modelAndView.setViewName("backstage/exercise");

		return modelAndView;
	}
	//题库资料新建
	@RequestMapping(value = "add_exercise", method = RequestMethod.GET)
	public ModelAndView add_exercise(Exercise exercise) throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("exercise", exercise);
		modelAndView.setViewName("backstage/add_exercise");

		return modelAndView;
	}
	//题库导入
	@RequestMapping(value = "add_finish", method = RequestMethod.POST)
	public ModelAndView add_finish(String[] FTitle,String[] FHourDesc,String[] FQRCode1,
			String[] FTitle1,String[] FTitle2,String[] FLabel,String[] FAnswer,String[] FQRCode2,
			String[] fsubjectid,String[] fversionid,Integer[] fclassid,Integer[] FVolume,
			String[] funit,String[] FVolumeQRCODE,String[] FUnitQRCODE,Integer[] FHourID,
			Exercise exercise
			) throws Exception {
		Mysql da=new Mysql();
		String sql=null;
		//this.exerciseService.addexercise_data(exercise);
		ModelAndView modelAndView = new ModelAndView();
		//List<Exercise> exlist= new ArrayList<Exercise>();
		/*
			if(FTitle.length==1){	
			sql="insert into t_exercise (FTitle,FHourDesc,FQRCode1,FTitle1,FTitle2,FLabel,FAnswer,FQRCode2,fsubjectid,fversionid,fclassid,FVolume,funit,FVolumeQRCODE,FUnitQRCODE,FHourID,fsettime) values ('"+FTitle[0]+"','"+FHourDesc[0]+"','"+FQRCode1[0]+"','"+FTitle1[0]+"','"+FTitle2[0]+"','"+FLabel[0]+"','"+FAnswer[0]+"','"+FQRCode2[0]+"','"+fsubjectid[0]+"','"+fversionid[0]+"',"+fclassid[0]+","+FVolume[0]+",'"+funit[0]+"','"+FVolumeQRCODE[0]+"','"+FUnitQRCODE[0]+"',"+FHourID[0]+",curdate())";
			da.executeUpdate(sql);
			}
			//System.out.print(FTitle[0]);
			*/
		
		if(FTitle.length==1){	
		this.exerciseService.addexercise_data(exercise);
		}
		else{
		for (int i =0; i < FTitle.length; i++ ) {
			sql="insert into t_exercise (FTitle,FHourDesc,FQRCode1,FTitle1,FTitle2,FLabel,FAnswer,FQRCode2,fsubjectid,fversionid,fclassid,FVolume,funit,FVolumeQRCODE,FUnitQRCODE,FHourID,fsettime) values ('"+FTitle[i]+"','"+FHourDesc[i]+"','"+FQRCode1[i]+"','"+FTitle1[i]+"','"+FTitle2[i]+"','"+FLabel[i]+"','"+FAnswer[i]+"','"+FQRCode2[i]+"','"+fsubjectid[i]+"','"+fversionid[i]+"',"+fclassid[i]+","+FVolume[i]+",'"+funit[i]+"','"+FVolumeQRCODE[i]+"','"+FUnitQRCODE[i]+"',"+FHourID[i]+",curdate())";
			//System.out.print(sql);
			da.executeUpdate(sql);
		}
		}
		//modelAndView.addObject("fsubjectid", fsubjectid[0]);
		//modelAndView.addObject("fversionid", fversionid[0]);
		//modelAndView.addObject("fclassid", fclassid[0]);
		//modelAndView.addObject("FVolume", FVolume[0]);
		//modelAndView.addObject("funit", funit[0]);
		//modelAndView.addObject("FVolumeQRCODE", FVolumeQRCODE[0]);
		//modelAndView.addObject("FUnitQRCODE", FUnitQRCODE[0]);
		//modelAndView.addObject("FHourID", FHourID[0]);
		//modelAndView.addObject("FTitle", FTitle);
	
		modelAndView.setViewName("backstage/addsuccess");

		return modelAndView;
	}
	//题库查看
	
	@RequestMapping(value = "view_exercise", method = RequestMethod.GET)
	public ModelAndView view_exercise(Exercise exercise) throws Exception {
		List<Exercise> vieweExercise=exerciseService.viewexercise_data(exercise);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("exercise", vieweExercise);
		modelAndView.setViewName("backstage/view_exercise");

		return modelAndView;
	}
	// 上传题库压缩包
	@RequestMapping(value = "zip_exercise", method = RequestMethod.GET)
	public ModelAndView zip_exercise(Exercise exercise) throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("exercise", exercise);
		modelAndView.setViewName("backstage/zip_input");

		return modelAndView;
	}
	//图片浏览
	@RequestMapping(value = "view_png", method = RequestMethod.GET)
	public ModelAndView view_png(@Param("fid") String fid) throws Exception {
		Exercise view=exerciseService.viewpng(fid);
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("view", view);
		modelAndView.setViewName("backstage/view_png");

		return modelAndView;
	}
	//---------------------------------------------------------------
	//后台管理V2.0版本
	//题库导入主界面
		@RequestMapping(value = "exercise2", method = RequestMethod.GET)
		public ModelAndView exercise2() throws Exception {
			List<SubMessage> getdy=exerciseService.getdy();
			List<SubMessage> getks=exerciseService.getks();
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("dy", getdy);
			modelAndView.addObject("ks", getks);
			modelAndView.setViewName("backstage2/exercise");

			return modelAndView;
		}
	//添加公共材料
		@RequestMapping(value = "material", method = RequestMethod.GET)
		public ModelAndView material() throws Exception {
						ModelAndView modelAndView = new ModelAndView();
		
			modelAndView.setViewName("backstage2/add_material");

			return modelAndView;
		}
	//公共材料添加成功
		@RequestMapping(value = "add_material", method = RequestMethod.POST)
		public ModelAndView add_material(Material material) throws Exception {
			this.exerciseService.addmaterial(material);
			String msg="alert('公共材料添加成功');";
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("msg", msg);
			modelAndView.setViewName("backstage2/add_material");

			return modelAndView;
		}
		//添加试题
		@RequestMapping(value = "add_exercise2", method = RequestMethod.POST)
		public ModelAndView add_exercise2(Exercise exercise) throws Exception {
			List<Material> getmaterial=exerciseService.getmaterial();
			String NNqr= exercise.getFsubjectid()+exercise.getFversionid()+exercise.getFclassid()+exercise.getFVolume();
			System.out.println(NNqr);
			String FVolumeQRCODE=null;//二维总码
			if(NNqr.equals("YWRJ32")){
				FVolumeQRCODE="NNYW000001";
			}
			else if(NNqr.equals("YWRJ42")){
				FVolumeQRCODE="NNYW000002";
			}
			else if(NNqr.equals("YWRJ52")){
				FVolumeQRCODE="NNYW000003";
			}
			else if(NNqr.equals("YWRJ62")){
				FVolumeQRCODE="NNYW000004";
			}
			else if(NNqr.equals("YWYW32")){
				FVolumeQRCODE="NNYW000005";
			}
			else if(NNqr.equals("YWYW42")){
				FVolumeQRCODE="NNYW000006";
			}
			else if(NNqr.equals("YWYW52")){
				FVolumeQRCODE="NNYW000007";
			}
			else if(NNqr.equals("YWYW62")){
				FVolumeQRCODE="NNYW000008";
			}
			else if(NNqr.equals("SXRJ32")){
				FVolumeQRCODE="NNSX000001";
			}
			else if(NNqr.equals("SXRJ42")){
				FVolumeQRCODE="NNSX000002";
			}
			else if(NNqr.equals("SXRJ52")){
				FVolumeQRCODE="NNSX000003";
			}
			else if(NNqr.equals("SXRJ62")){
				FVolumeQRCODE="NNSX000004";
			}
			else if(NNqr.equals("SXBS32")){
				FVolumeQRCODE="NNSX000005";
			}
			else if(NNqr.equals("SXBS42")){
				FVolumeQRCODE="NNSX000006";
			}
			else if(NNqr.equals("SXBS52")){
				FVolumeQRCODE="NNSX000007";
			}
			else if(NNqr.equals("SXBS62")){
				FVolumeQRCODE="NNSX000008";
			}
			else if(NNqr.equals("YYRJ32")){
				FVolumeQRCODE="NNYY000001";
			}
			else if(NNqr.equals("YYRJ42")){
				FVolumeQRCODE="NNYY000002";
			}
			else if(NNqr.equals("YYRJ52")){
				FVolumeQRCODE="NNYY000003";
			}
			else if(NNqr.equals("YYRJ62")){
				FVolumeQRCODE="NNYY000004";
			}
			else if(NNqr.equals("YYKX32")){
				FVolumeQRCODE="NNYY000005";
			}
			else if(NNqr.equals("YYKX42")){
				FVolumeQRCODE="NNYY000006";
			}
			else if(NNqr.equals("YYKX52")){
				FVolumeQRCODE="NNYY000007";
			}
			else if(NNqr.equals("YYKX62")){
				FVolumeQRCODE="NNYY000008";
			}
			exercise.setFVolumeQRCODE(FVolumeQRCODE);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ex", exercise);
			modelAndView.addObject("getmaterial", getmaterial);
			modelAndView.setViewName("backstage2/add_exercise");

			return modelAndView;
		}
		//添加试题成功
		@RequestMapping(value = "add_fin2", method = RequestMethod.POST)
		public ModelAndView add_fin2(Exercise exercise) throws Exception {
			String msg="alert('添加成功');";
			List<Material> getmaterial=exerciseService.getmaterial();
			this.exerciseService.addexercise_data1(exercise);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ex", exercise);
			modelAndView.addObject("msg", msg);
			modelAndView.addObject("getmaterial", getmaterial);
			modelAndView.setViewName("backstage2/add_exercise");

			return add_exercise2(exercise);
		}
		//题库查看
		
		@RequestMapping(value = "view_exercise1", method = RequestMethod.GET)
		public ModelAndView view_exercise1(Exercise exercise) throws Exception {
			String qrcode=exercise.getFversionid()+exercise.getFsubjectid()+exercise.getFclassid()+exercise.getFVolume()+exercise.getFunit()+exercise.getFHourID();//课时二维码
			//生成二维码图片
			File directory = new File("");
			
			String savePath =URLDecoder.decode(getClass().getResource("/").getFile().toString(),"UTF-8"); 
			String Str=savePath.substring(0,savePath.lastIndexOf("WEB-INF"));
		
			System.out.println(savePath);
			System.out.println(Str);
			String str = "http://www.kunpeng-china.com/exam/toqrcode.do?qrcode="+qrcode;// 二维码内容  
            String path = Str+"kscode/"+qrcode+".png";  
            BitMatrix byteMatrix;  
            byteMatrix = new MultiFormatWriter().encode(new String(str.getBytes("GBK"),"iso-8859-1"),  
                    BarcodeFormat.QR_CODE, 200, 200);  
            File file = new File(path);  
              
            MatrixToImageWriter.writeToFile(byteMatrix, "png", file);
            //--------------------------------------------------------
			List<Exercise> vieweExercise=exerciseService.viewexercise_data(exercise);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("subject", exercise);
			modelAndView.addObject("qrcode", qrcode);
			modelAndView.addObject("exercise", vieweExercise);
			modelAndView.setViewName("backstage2/view_exercise");

			return modelAndView;
		}
		//题库修改
		@RequestMapping(value = "alter_exercise", method = RequestMethod.GET)
		public ModelAndView alter_exercise(@Param("fid") String fid) throws Exception {
			Exercise alter=exerciseService.viewpng(fid);
			List<Material> getmaterial=exerciseService.getmaterial();
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ex", alter);
			modelAndView.addObject("getmaterial", getmaterial);
			modelAndView.setViewName("backstage2/alter_exercise");

			return modelAndView;
		}
		//题库更新成功
		@RequestMapping(value = "alert_fin", method = RequestMethod.POST)
		public ModelAndView alert_fin(Exercise exercise) throws Exception {
			System.out.println(exercise.getFAudioFileName());
			if(exercise.getFAudioFileName()==null||exercise.getFAudioFileName()==""){
			 exercise.setFAudioFileName(exercise.getFRemark1())	;	
			}
			if(exercise.getFYYAudioFileName()==null||exercise.getFAudioFileName()==""){
			 exercise.setFYYAudioFileName(exercise.getFRemark2());	
			}	
			this.exerciseService.alter_exercise(exercise);
			ModelAndView modelAndView = new ModelAndView();
		
			//modelAndView.setViewName("backstage2/alter_exercise");

			return view_exercise1(exercise);
		}
		//题库浏览
		@RequestMapping(value = "view", method = RequestMethod.GET)
		public ModelAndView view(@Param("fid") String fid) throws Exception {
			Exercise view=exerciseService.viewpng(fid);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ex", view);
			modelAndView.setViewName("backstage2/view");

			return modelAndView;	
		}
		//添加总码/单元微课材料
		@RequestMapping(value = "add_ksqr", method = RequestMethod.GET)
		public ModelAndView add_ksqr(Exercise exercise) throws Exception {
	
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ex", exercise);
			modelAndView.setViewName("backstage2/add_ksQR");

			return modelAndView;	
		}
		
		//添加单元微课材料成功
				@RequestMapping(value = "add_dym_fin", method = RequestMethod.POST)
				public ModelAndView add_dym_fin(Exercise exercise) throws Exception {
					this.exerciseService.add_dyqrm(exercise);
					ModelAndView modelAndView = new ModelAndView();
					modelAndView.setViewName("backstage2/add_ksQR_fin");

					return modelAndView;	
				}
		//添加总码成功
		@RequestMapping(value = "add_ksqr_fin", method = RequestMethod.POST)
		public ModelAndView add_ksqr_fin(Exercise exercise) throws Exception {
			this.exerciseService.add_ksqr(exercise);
			String msg="alert('添加课时二维码成功');";
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("msg", msg);
			modelAndView.setViewName("backstage2/add_ksQR_fin");

			return modelAndView;	
		}
		//添加微课二维码
		@RequestMapping(value = "addFWKQRCode", method = RequestMethod.GET)
		public ModelAndView addFWKQRCode(Exercise exercise) throws Exception {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ex", exercise);
			modelAndView.setViewName("backstage2/addFQRCode");

			return modelAndView;	
		}
		//添加二维码成功
		@RequestMapping(value = "add_wkqrcode_fin", method = RequestMethod.POST)
		public ModelAndView add_wkqrcode_fin(Exercise exercise) throws Exception {
			this.exerciseService.add_wkqr(exercise);
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.setViewName("backstage2/add_ksQR_fin");

			return modelAndView;	
		}
		//-------------------------------组卷模块-------------------------------------------------
		//组卷主界面
		@RequestMapping(value = "settestpaper", method = RequestMethod.GET)
		public ModelAndView settestpaper() throws Exception {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("testpaper/GeneratingPaper");

			return modelAndView;	
		}
		//进入组卷
		@RequestMapping(value = "testpaper_main", method = RequestMethod.GET)
		public ModelAndView testpaper_main() throws Exception {
			//生成唯一试卷码
			Random random = new Random();  
	        int FExamID = random.nextInt(899999); 
	        FExamID = FExamID+100000; 
	       //写入对象带出页面
	        ExaminationList examinationList=new ExaminationList();
	        examinationList.setFExamID(FExamID);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("FExamID", FExamID);
			modelAndView.setViewName("testpaper/Modify");
			
			return modelAndView;	
		}
		//增加题型
		@RequestMapping(value = "add_tx", method = RequestMethod.GET)
		public ModelAndView add_tx(ExaminationList examinationList) throws Exception {
			int FExamID= examinationList.getFExamID();
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("FExamID", FExamID);
			modelAndView.setViewName("testpaper/add_tx");

			return modelAndView;	
		}
		//添加题型成功
		@RequestMapping(value = "add_tx_fin", method = RequestMethod.POST)
		public ModelAndView add_tx_fin(ExaminationList examinationList) throws Exception {
			this.exerciseService.add_tx(examinationList);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("testpaper/add_tx_fin");

			return modelAndView;	
		}
		//查看试卷题型
		@RequestMapping(value = "check_tx", method = RequestMethod.GET)
		public ModelAndView check_tx(ExaminationList examinationList) throws Exception {
			List<ExaminationList> gettx=exerciseService.check_tx(examinationList);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("gettx", gettx);
			modelAndView.setViewName("testpaper/TopicList");

			return modelAndView;	
		}
		//试卷题型删除
		@RequestMapping(value = "tx_delete", method = RequestMethod.GET)
		public ModelAndView tx_delete(ExaminationList examinationList) throws Exception {
			this.exerciseService.delete_tx(examinationList);
			Exercisetem exercisetem=new Exercisetem();
			exercisetem.setExfid(examinationList.getExfid());
			exercisetem.setFExamID(examinationList.getFExamID());
			this.exerciseService.delete_testpaper1(exercisetem);
			ModelAndView modelAndView = new ModelAndView();
			return check_tx(examinationList);
		}
		//试题组合
		@RequestMapping(value = "add_ex", method = RequestMethod.GET)
		public ModelAndView add_ex(ExaminationList examinationList) throws Exception {
			List<SubMessage> getdy=exerciseService.getdy();
			ExaminationList gettx=exerciseService.get_tx(examinationList);
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("dy", getdy);
			modelAndView.addObject("tx", gettx);
			modelAndView.setViewName("testpaper/AddItem");
			return modelAndView;	
		}
		//试题组合 查询
		@RequestMapping(value = "view_exercise_zj", method = RequestMethod.GET)
		public ModelAndView view_exercise_zj(Exercise exercise,ExaminationList examinationList) throws Exception {
			List<Exercise> viewex=exerciseService.viewexercise_data1(exercise);
			int FExamID= examinationList.getFExamID();
			int exfid=examinationList.getExfid();
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("viewex", viewex);
			modelAndView.addObject("FExamID", FExamID);
			modelAndView.addObject("exfid", exfid);
			modelAndView.setViewName("testpaper/Topic");
			return modelAndView;	
		}
		//添加对应试题
		@RequestMapping(value = "ExaminationQuestions", method = RequestMethod.GET)
		public ModelAndView ExaminationQuestions(Exercisetem exercisetem) throws Exception {
			
			if(exercisetem.getFid()!=0){
			this.exerciseService.add_testpaper(exercisetem);
			}
			List<Exercisetem> getex=exerciseService.check_testpaper(exercisetem);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("getex", getex);
			modelAndView.setViewName("testpaper/ExaminationQuestions");
			return modelAndView;	
		}
		//删除对应添加试题
		@RequestMapping(value = "testpaper_delete", method = RequestMethod.GET)
		public ModelAndView testpaper_delete(Exercisetem exercisetem) throws Exception {
			this.exerciseService.delete_testpaper(exercisetem);
			List<Exercisetem> getex=exerciseService.check_testpaper(exercisetem);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("getex", getex);
			modelAndView.setViewName("testpaper/ExaminationQuestions");
			return modelAndView;	
		}
		//浏览添加试题内容
		@RequestMapping(value = "veiw_testpaper", method = RequestMethod.GET)
		public ModelAndView veiw_testpaper(@Param("fid") String fid) throws Exception {
			Exercise view=exerciseService.viewpng(fid);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ex", view);
			modelAndView.setViewName("testpaper/view_testpaper");
			return modelAndView;	
		}
		//查看对应题目
		@RequestMapping(value = "Question", method = RequestMethod.GET)
		public ModelAndView Question(Exercisetem exercisetem) throws Exception {
			List<Exercisetem> getex=null;
			if(exercisetem.getExfid()==0){
				getex=exerciseService.check_testpaperall(exercisetem);
			}
			else{
			getex=exerciseService.check_testpaper(exercisetem);
			}
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("getex", getex);
			modelAndView.setViewName("testpaper/Question");
			return modelAndView;	
		}
		//修改试卷内题目
		@RequestMapping(value = "ex_alter", method = RequestMethod.GET)
		public ModelAndView ex_alter(Exercisetem exercisetem) throws Exception {
			Exercisetem getex=exerciseService.view_testpaper(exercisetem);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ex", getex);
			modelAndView.setViewName("testpaper/alter_exercise");
			return modelAndView;	
		}
		//修改试卷内题目完成
		@RequestMapping(value = "ex_alert_fin", method = RequestMethod.POST)
		public ModelAndView ex_alert_fin(Exercisetem exercisetem) throws Exception {
			this.exerciseService.alter_tsex(exercisetem);
			ModelAndView modelAndView = new ModelAndView();
			return Question(exercisetem);	
		}
		//删除试卷
		@RequestMapping(value = "delete_all", method = RequestMethod.GET)
		public ModelAndView delete_testpaper(ExaminationList examinationList) throws Exception {
			this.exerciseService.delete_tx1(examinationList);
			Exercisetem exercisetem=new Exercisetem();
			exercisetem.setFExamID(examinationList.getFExamID());
			this.exerciseService.delete_testpaper2(exercisetem);
			//Examination examination=new Examination();
			//examination.setFExamID(examinationList.getFExamID());
			//this.exerciseService.delete_examination(examination);
			ModelAndView modelAndView = new ModelAndView();
			return settestpaper();	
		}
		//添加试卷
		@RequestMapping(value = "add_examination_fin", method = RequestMethod.POST)
		public ModelAndView add_examination_fin(Examination examination) throws Exception {
			this.exerciseService.add_examination(examination);
			ModelAndView modelAndView = new ModelAndView();
			return settestpaper();	
		}
		//试卷浏览
		@RequestMapping(value = "view_examination", method = RequestMethod.GET)
		public ModelAndView view_examination() throws Exception {
			List<Examination> getExaminations=exerciseService.getexamination();
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("getExaminations", getExaminations);
			modelAndView.setViewName("testpaper/GeneratingPaperDiv");
			return modelAndView;	
		}
		//列表删除试卷
				@RequestMapping(value = "list_delete_all", method = RequestMethod.GET)
				public ModelAndView list_delete_all(ExaminationList examinationList) throws Exception {
					this.exerciseService.delete_tx1(examinationList);
					Exercisetem exercisetem=new Exercisetem();
					exercisetem.setFExamID(examinationList.getFExamID());
					this.exerciseService.delete_testpaper2(exercisetem);
					Examination examination=new Examination();
					examination.setFExamID(examinationList.getFExamID());
					this.exerciseService.delete_examination(examination);
					ModelAndView modelAndView = new ModelAndView();
					return view_examination();	
				}
		//修改试卷
				@RequestMapping(value = "alter_examination", method = RequestMethod.GET)
				public ModelAndView alter_examination(Examination examination) throws Exception {
					Examination altereExamination=exerciseService.alter_examination(examination);
					ModelAndView modelAndView = new ModelAndView();
					modelAndView.addObject("altexa", altereExamination);
					modelAndView.setViewName("testpaper/alter_Modify");
					return modelAndView;	
				}	
		//修改试卷成功
				@RequestMapping(value = "alter_examination_fin", method = RequestMethod.POST)
				public ModelAndView alter_examination_fin(Examination examination) throws Exception {
					this.exerciseService.alter_examination_fin(examination);
					ModelAndView modelAndView = new ModelAndView();
					return settestpaper();	
				}
		//浏览试题
				@RequestMapping(value = "preview_examination", method = RequestMethod.GET)
				public ModelAndView preview_examination(Exercisetem exercisetem,@Param("testname") String testname) throws Exception {
					List<Exercisetem> viewtestpaper=exerciseService.view_examination(exercisetem);
					ExaminationList examinationList=new ExaminationList();
					examinationList.setFExamID(exercisetem.getFExamID());
					List<ExaminationList> gettx=exerciseService.check_tx(examinationList);
					ModelAndView modelAndView = new ModelAndView();
					modelAndView.addObject("viewtestpaper", viewtestpaper);
					modelAndView.addObject("gettx", gettx);
					modelAndView.addObject("testname",testname);
					modelAndView.setViewName("testpaper/preview");
					return modelAndView;	
				}
				//小游戏题库导入	
				@RequestMapping(value = "games_import", method = RequestMethod.GET)
				public ModelAndView games_import() throws Exception {
					List<SubMessage> getdy=exerciseService.getdy();
					List<SubMessage> getks=exerciseService.getks();
					ModelAndView modelAndView = new ModelAndView();
					modelAndView.addObject("dy", getdy);
					modelAndView.addObject("ks", getks);
					modelAndView.setViewName("backstage2/games");
					return modelAndView;	
				}
		//小游戏题目资料导入		
				@RequestMapping(value = "add_games", method = RequestMethod.POST)
				public ModelAndView add_games(Games games) throws Exception {
					ModelAndView modelAndView = new ModelAndView();
					modelAndView.addObject("ex", games);
					modelAndView.setViewName("backstage2/add_games");
					return modelAndView;	
				}		
		//小游戏题目导入成功
				@RequestMapping(value = "add_games_fin", method = RequestMethod.POST)
				public ModelAndView add_games_fin(Games games) throws Exception {
					ModelAndView modelAndView = new ModelAndView();
					this.exerciseService.add_games(games);
					modelAndView.addObject("ex", games);
					
					return add_games(games);
												
				}
				
				//删除小游戏
				@RequestMapping(value = "delectGames", method = RequestMethod.GET)
				public ModelAndView delectGames(Games games,@Param("fid")int fid)throws Exception{
					exerciseService.delectGames(fid);
					
					return games(games);
					
				}
		//修改小游戏
				@RequestMapping(value = "updae_Games", method = RequestMethod.POST)
				public ModelAndView updae_Games(Games games)throws Exception{
					System.out.println(games.getFid());
					if(games.getFaudio1()==""||games.getFaudio1()==null){
						games.setFaudio1(games.getFaudio());
					}
					this.exerciseService.updateGames(games);
					
					return games(games);
					
				}
	//查询小游戏
				@RequestMapping(value = "updaeGames", method = RequestMethod.GET)
				public ModelAndView selectGames(@Param("fid")int fid)throws Exception{
					ModelAndView modelAndView = new ModelAndView();
					
					Games selectGames = exerciseService.select_Games(fid);
					modelAndView.addObject("ex", selectGames);
					modelAndView.setViewName("backstage2/update_games");
					
					return modelAndView;
					
				}
		//小游戏查看
				@RequestMapping(value = "games_look", method = RequestMethod.GET)
				public ModelAndView games(Games games) throws Exception{
					ModelAndView modelAndView = new ModelAndView();
					int fclassid = games.getFclassid();
					List<Games> selectGames = exerciseService.selectGames(games);
					
					String substring=null;
					for (Games games2 : selectGames) {
						
						if (games2.getFimg()!=null) {
							String fanswer = games2.getFimg();
							substring = fanswer.substring(fanswer.indexOf("upload"),fanswer.lastIndexOf(".")+4);
							games2.setFimg(substring);
						}
					}
					modelAndView.addObject("selectGames", selectGames);
					//modelAndView.addObject("substring", substring);
					modelAndView.setViewName("backstage2/games2");
					return modelAndView;
				}
		//删除试题
				@RequestMapping(value = "del_exercise", method = RequestMethod.GET)
				public ModelAndView del_exercise(Exercise exercise) throws Exception {
					this.exerciseService.del_exercise(exercise);
					return view_exercise1(exercise);
				}
				
}
