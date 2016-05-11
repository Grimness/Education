package com.mvc.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.PracticeService;
import com.business.utils.Transform;
import com.ibatis.model.Practice;

@Controller
public class PracticeController {
	@Autowired
	private PracticeService practiceService;
	
	//家长端 综合素质
	//综合素质--实践活动
		/**
		 * 学生活动信息列表
		 * @param FStudentID  孩子学号
		 * @return
		 */
		@RequestMapping(value = "MixedAbility1",produces = "application/json; charset=utf-8")
		public ModelAndView practicesList(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone){
			ModelAndView modelAndView = new ModelAndView();
			List<String> dates = practiceService.dateGroup(FStudentID);
			Map<String,List<Practice>> practices = new HashMap<String,List<Practice>>();
			for (String string : dates) {
				List<Practice> p  = practiceService.studentPracticeByDate(FStudentID, string);
				for (Practice practice : p) {
					if(practice.getWeek()==null)
						continue;
					practice.setWeek(Transform.transWeek(Integer.parseInt(practice.getWeek())));
				}
				practices.put(string, p);
			}
			modelAndView.addObject("practices", practices);
			modelAndView.addObject("dates", dates);
			modelAndView.addObject("FPhone", FPhone);
			modelAndView.addObject("FStudentID", FStudentID);
			modelAndView.setViewName("mixed-ability/MixedAbility1");
			return modelAndView;
		}
		
		//教师端 综合素质
		//综合素质--实践活动
			/**
			 * 学生活动信息列表
			 * @param FStudentID  孩子学号
			 * @return
			 */
			@RequestMapping(value = "MixedAbility2",produces = "application/json; charset=utf-8")
			public ModelAndView practicesList2(@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone){
				ModelAndView modelAndView = new ModelAndView();
				List<String> dates = practiceService.dateGroup(FStudentID);
				Map<String,List<Practice>> practices = new HashMap<String,List<Practice>>();
				for (String string : dates) {
					List<Practice> p  = practiceService.studentPracticeByDate(FStudentID, string);
					for (Practice practice : p) {
						if(practice.getWeek()==null)
							continue;
						practice.setWeek(Transform.transWeek(Integer.parseInt(practice.getWeek())));
					}
					practices.put(string, p);
				}
				modelAndView.addObject("practices", practices);
				modelAndView.addObject("dates", dates);
				modelAndView.addObject("FPhone", FPhone);
				modelAndView.addObject("FStudentID", FStudentID);
				modelAndView.setViewName("mixed-ability/MixedAbility2");
				return modelAndView;
			}
			
			
		//综合素质--编辑
		@RequestMapping(value = "EDIT", method = RequestMethod.GET)
		public ModelAndView comprehensiveEdit(){
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("mixed-ability/EDIT");
			return modelAndView;
		}
		
		

		//上传图片
		
		@RequestMapping(value = "uploadImg",method = RequestMethod.POST)
		public ModelAndView uploadImg(HttpServletRequest request){
			ModelAndView modelAndView = new ModelAndView();
			//得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
			String savePath = request.getServletContext().getRealPath("/upload");
			File file = new File(savePath);
			//判断上传文件的保存目录是否存在
			if (!file.exists() && !file.isDirectory()) {
			System.out.println(savePath+"目录不存在，需要创建");
			//创建目录
			file.mkdir();
			}
			String path = savePath + "/SJ";
			File files = new File(path);
			//判断上传文件的保存目录是否存在
			if (!files.exists() && !files.isDirectory()) {
			System.out.println(path+"目录不存在，需要创建");
			//创建目录
			files.mkdir();
			}
			//消息提示
			String message = "";
			String name="";
			try{
			//1、创建一个DiskFileItemFactory工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//2、创建一个文件上传解析器
			ServletFileUpload upload = new ServletFileUpload(factory);
			//解决上传文件名的中文乱码
			upload.setHeaderEncoding("UTF-8"); 
			//4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，每一个FileItem对应一个Form表单的输入项
			List<FileItem> list = upload.parseRequest(request);
			for(FileItem item : list){
			//如果fileitem中封装的是普通输入项的数据
			if(item.isFormField()){
			 name = item.getFieldName();
			//解决普通输入项的数据的中文乱码问题
			String value = item.getString("UTF-8");
			}else{
			//得到上传的文件名称，
			String filename = item.getName();
			if(filename==null || filename.trim().equals("")){
			continue;
			}
			filename = filename.substring(filename.lastIndexOf("\\")+1);
			System.out.println(savePath + "\\" + filename);
			modelAndView.addObject("filename","/SJ/"+filename);
			//获取item中的上传文件的输入流
			InputStream in = item.getInputStream();
			//创建一个文件输出流
			FileOutputStream out = new FileOutputStream(path + "\\" + filename);
			//图片压缩
			Transform.resizeImage(in, out, 400,400, "png");
			//创建一个缓冲区
			byte buffer[] = new byte[1024];
			//判断输入流中的数据是否已经读完的标识
			int len = 0;
			//循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
			while((len=in.read(buffer))>0){
			//使用FileOutputStream输出流将缓冲区的数据写入到指定的目录(savePath + "\\" + filename)当中
			out.write(buffer, 0, len);
			}
			//关闭输入流
			in.close();
			//关闭输出流
			out.close();
			//删除处理文件上传时生成的临时文件
			item.delete();
		
			message = "图片上传成功！";
			}
			}
			}catch (Exception e) {
			message= "图片上传失败！";
			e.printStackTrace();
			 
			}
			
			modelAndView.addObject("message", message);
			modelAndView.setViewName("mixed-ability/EDIT");
			return modelAndView;
		}
	
		
	
	
	
	/**
	 * 学生活动保存
	 */
	@RequestMapping(value = "practicesEdit",produces = "application/json; charset=utf-8")
	public ModelAndView practicesEdit(Practice practice,@Param("FStudentID")String FStudentID,@Param("FPhone")String FPhone){
		ModelAndView modelAndView = new ModelAndView();
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		practice.setFDate(sdf.format(date));
		practice.setFPhone(FPhone);
		practice.setFContent(practice.getFContent().trim());
		practiceService.addPractice(practice);
		return practicesList(FStudentID, FPhone);
	}	
}
