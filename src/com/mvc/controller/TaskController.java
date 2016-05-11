package com.mvc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.PsychologyService;
import com.business.service.UserService;
import com.business.utils.Transform;
import com.ibatis.model.Exercise;
import com.ibatis.model.Homeupdate;
import com.ibatis.model.Homework;
import com.ibatis.model.TeacherClass;
import com.ibatis.model.User;

@Controller
public class TaskController {
	@Autowired
	private UserService userservice;
	@Autowired
	private PsychologyService psychologyService;

	// 家长端
	// 作业检查
	@RequestMapping(value = "OperationCheck", method = RequestMethod.GET)
	public ModelAndView OperationCheck(Homework homework) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		List<Homework> selectOperationCheck = psychologyService.selectOperationCheck(homework);
		String fphone = homework.getFphone();
		String fclasscode=null;
		String fqrCode1 = null;
		String assigninghomework = null;
		String fChildid = homework.getFChildid();
		for (Homework homework2 : selectOperationCheck) {
			fclasscode = homework2.getFclasscode();
			fqrCode1 = homework2.getFQRCode1();
			assigninghomework = homework2.getAssigninghomework();
		}
		modelAndView.addObject("assigninghomework", assigninghomework);
		modelAndView.addObject("fqrCode1", fqrCode1);
		modelAndView.addObject("FChildid", fChildid);
		modelAndView.addObject("fphone", fphone);
		modelAndView.addObject("fclasscode", fclasscode);
		
		modelAndView.addObject("selectOperationCheck", selectOperationCheck);
		
		modelAndView.setViewName("task/OperationCheck");
		return modelAndView;
	}
	@RequestMapping(value = "upload",method = RequestMethod.POST)
	public ModelAndView upload(HttpServletRequest request,Homework homework) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		
		String filename = null;
		// 得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
		String savePath = request.getServletContext().getRealPath("/uploadImg");
		File file = new File(savePath);
		// 判断上传文件的保存目录是否存在
		if (!file.exists() && !file.isDirectory()) {
			System.out.println(savePath + "目录不存在，需要创建");
			// 创建目录
			file.mkdir();
			if (!file.exists() && !file.isDirectory()) {
				System.out.println(savePath + "目录不存在，需要创建");
				// 创建目录
				file.mkdir();
			}
		}
		// 消息提示
		String message = "";
		String name = "";
		try {
			// 使用Apache文件上传组件处理文件上传步骤：
			// 1、创建一个DiskFileItemFactory工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 2、创建一个文件上传解析器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 解决上传文件名的中文乱码
			upload.setHeaderEncoding("UTF-8");
			// 3、判断提交上来的数据是否是上传表单的数据
			if (!ServletFileUpload.isMultipartContent(request)) {
				// 按照传统方式获取数据
				
			}
			// 4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，每一个FileItem对应一个Form表单的输入项
			List<FileItem> list = upload.parseRequest(request);
			for (FileItem item : list) {
				// 如果fileitem中封装的是普通输入项的数据
				if (item.isFormField()) {
					name = item.getFieldName();

					// 解决普通输入项的数据的中文乱码问题
					String value = item.getString("UTF-8");
					// value = new String(value.getBytes("iso8859-1"),"UTF-8");
					if (name.equals("fphone")) {
						homework.setFphone(value);
						homework.getFphone();
						
					}
					if (name.equals("fclasscode")) {
						homework.setFclasscode(value);
						homework.getFclasscode();
					}
					if (name.equals("FChildid")) {
						homework.setFChildid(value);
						homework.getFChildid();
						
					}
					if (name.equals("fqrCode1")) {
						homework.setFQRCode1(value);
						homework.getFQRCode1();
						
					}
					if (name.equals("assigninghomework")) {
						homework.setAssigninghomework(value);
						System.out.println(homework.getAssigninghomework());
						
					}
				} else {// 如果fileitem中封装的是上传文件
				// 得到上传的文件名称，
					filename = item.getName();
					
					if (filename == null || filename.trim().equals("")) {
						continue;
					}

					// 注意：不同的浏览器提交的文件名是不一样的，有些浏览器提交上来的文件名是带有路径的，如：
					// c:\a\b\1.txt，而有些只是单纯的文件名，如：1.txt
					
					
					
					String randomUUID = null;
					
					// 处理获取到的上传文件的文件名的路径部分，只保留文件名部分
					
					filename = UUID.randomUUID().toString()+filename
							.substring(filename.lastIndexOf("\\") + 1);
					homework.setFimg("/uploadImg/"+filename);
					
						
						
						
						
						
						
						
						// 获取item中的上传文件的输入流
					InputStream in = item.getInputStream();
					// 创建一个文件输出流
					FileOutputStream out = new FileOutputStream(savePath + "\\"
							+ filename);
					Transform.resizeImage(in, out, 400, 400, "png");
					// 创建一个缓冲区
					byte buffer[] = new byte[1024];
					// 判断输入流中的数据是否已经读完的标识
					int len = 0;
					// 循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
					while ((len = in.read(buffer)) > 0) {
						// 使用FileOutputStream输出流将缓冲区的数据写入到指定的目录(savePath + "\\"
						// + filename)当中
						out.write(buffer, 0, len);
					}
					
					
					// 关闭输入流
					in.close();
					// 关闭输出流
					out.close();
					// 删除处理文件上传时生成的临时文件
					item.delete();

					message = " 图片上传成功！";
				}
			}
		} catch (Exception e) {
			message = "图片上传失败！";
			e.printStackTrace();
		}
		psychologyService.insertCheckMarking(homework);
			modelAndView.setViewName("task/upload");
			System.out.println(homework.getFphone());
			System.out.println(homework.getFChildid());
			System.out.println(homework.getFQRCode1());
			System.out.println(homework.getFclasscode());
				return CheckMarking(homework);
		
	}


	// 查看批阅
	@RequestMapping(value = "CheckMarking", method = RequestMethod.GET)
	public ModelAndView CheckMarking(Homework homework) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println(homework.getFphone());
		List<Homework> selectCheckMarking = psychologyService.selectCheckMarking(homework);
		modelAndView.addObject("selectCheckMarking", selectCheckMarking);
		modelAndView.setViewName("task/CheckMarking");
		return modelAndView;
	}

	// 错题库
	@RequestMapping(value = "WrongQuestion", method = RequestMethod.GET)
	public ModelAndView WrongQuestion() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("task/WrongQuestion");
		return modelAndView;
	}

	// 查看答案
	@RequestMapping(value = "CheckAnswer3", method = RequestMethod.GET)
	public ModelAndView CheckAnswer3(Homework homework) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		List<Homework> selectCheckAnswer3 = psychologyService.selectCheckAnswer3(homework);
		modelAndView.addObject("selectCheckAnswer3", selectCheckAnswer3);
		modelAndView.setViewName("task/exercise");
		return modelAndView;
	}

  

	// 移除错题
	@RequestMapping(value = "RemoveQuestion", method = RequestMethod.GET)
	public ModelAndView RemoveQuestion(HttpServletRequest request,Homework homework) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println(homework.getFFileName()+"-------------------------------------");
		//PublicIO.FileImg(request,homework);
		
		
		modelAndView.setViewName("task/RemoveQuestion");
		return modelAndView;
	}
	
	// 教师端
	// 布置作业
	@RequestMapping(value = "SettingHomework", method = RequestMethod.GET)
	public ModelAndView SettingHomework(Homework homework,Exercise exercise,TeacherClass teacherClass,User user) throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		String freleasetime = homework.getFreleasetime();
		List<Homework> selectSubmessage = psychologyService.selectSubmessage(homework);
	/*	String fclasscode = null;
		String fqrcode1 = null;
		
		for (Homework homework2 : selectSubmessage) {
			fclasscode = homework2.getFclasscode();
			fqrcode1= homework2.getFQRCode1();
		}
		
		
		
		modelAndView.addObject("fclasscode", fclasscode);
		modelAndView.addObject("fqrcode1", fqrcode1);*/
		String fphone = homework.getFphone();
		System.out.println(fphone+"=============================");
		modelAndView.addObject("fphone", fphone);
		/*List<TeacherClass> selectTeacherClass = psychologyService.selectTeacherClass(teacherClass);
		
		modelAndView.addObject("selectTeacherClass", selectTeacherClass);*/
		modelAndView.addObject("selectSubmessage", selectSubmessage);
		modelAndView.addObject("freleasetime", freleasetime);
		modelAndView.setViewName("task/SettingHomework");
		return modelAndView;
	}
	
		@RequestMapping(value = "HomeworkDiv", method = RequestMethod.GET)
		public ModelAndView HomeworkDiv1(Homework homework) throws Exception {
			
			ModelAndView modelAndView = new ModelAndView();
			String fphone = homework.getFphone();
			System.out.println(fphone+"----------------------");
			modelAndView.addObject("fphone", fphone);
			modelAndView.setViewName("task/HomeworkDiv");
			return modelAndView;
		}
	// 布置作业2
	@RequestMapping(value = "SettingHomework2", method = RequestMethod.GET)
	public ModelAndView SettingHomework2(Homework homework,Exercise exercise,TeacherClass teacherClass,User user) throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		
		String freleasetime = homework.getFreleasetime();
		this.psychologyService.insertHomework(homework);
		List<Homework> selectSubmessage = psychologyService.selectSubmessage(homework);

	
		
		
		
		
		List<TeacherClass> selectTeacherClass = psychologyService.selectTeacherClass(teacherClass);
		
		modelAndView.addObject("selectTeacherClass", selectTeacherClass);
		modelAndView.addObject("selectSubmessage", selectSubmessage);
		modelAndView.addObject("freleasetime", freleasetime);
		modelAndView.setViewName("task/SettingHomework");
		return HomeworkDiv1(homework);
	}
	// 我要布置作业
	@RequestMapping(value = "AssigningHomework", method = RequestMethod.GET)
	public ModelAndView AssigningHomework(HttpServletRequest request, HttpServletResponse response,Homework homework,TeacherClass teacherClass,User user,Exercise exercise) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		List<TeacherClass> selectTeacherClass = psychologyService.selectTeacherClass(teacherClass);
		
		Exercise selectExercise1 = psychologyService.selectExercise1(user);
		
		ModelAndView modelAndView = new ModelAndView();
		String fphone = user.getFphone();
		
		
		modelAndView.addObject("apples", fphone);
		teacherClass.setFphone(user.getFphone());
		
		
		modelAndView.addObject("selectExercise1", selectExercise1);
		modelAndView.addObject("selectTeacherClass", selectTeacherClass);
		
		modelAndView.setViewName("task/AssigningHomework");
		return modelAndView;
	}
	// 我要布置作业
	@RequestMapping(value = "AssigningHomework2", method = RequestMethod.GET)
	public ModelAndView AssigningHomework2(HttpServletRequest request, HttpServletResponse response,Homework homework,TeacherClass teacherClass,User user,Exercise exercise) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView modelAndView = new ModelAndView();
		String fname = null;
		List<TeacherClass> selectTeacherClass = psychologyService.selectTeacherClass(teacherClass);
		for (TeacherClass teacherClass2 : selectTeacherClass) {
			fname = teacherClass2.getFname();
			homework.setFUserName(fname);
		}
		Exercise selectExercise1 = psychologyService.selectExercise1(user);
		String fName2 = homework.getFUserName();
		System.out.println(fName2+"11111111111111111111111");
		
		String fphone = user.getFphone();
		homework.setFQRCode1(exercise.getFQRCode1());
		String fqrCode1 = homework.getFQRCode1();
		String getFphone = homework.getFphone();
		String getFclasscode = homework.getFclasscode();
		System.out.println(fName2+"77777777777777777777777777");
		
		modelAndView.addObject("fName", fName2);
		modelAndView.addObject("fqrCode2", fqrCode1);
		modelAndView.addObject("getFphone", getFphone);
		modelAndView.addObject("getFclasscode", getFclasscode);
		//modelAndView.addObject("getFsynchronization", getFsynchronization);
		
		//this.psychologyService.updateHomework(homework);
		
		modelAndView.addObject("apples", fphone);
		teacherClass.setFphone(user.getFphone());
		
		
		
		modelAndView.addObject("selectExercise1", selectExercise1);
		modelAndView.addObject("selectTeacherClass", selectTeacherClass);
		
		modelAndView.setViewName("task/AssigningHomework");
		return modelAndView;
	}
	// 选择课时
	@RequestMapping(value = "ChooseClass", method = RequestMethod.GET)
	public ModelAndView ChooseClass(Exercise exercise,TeacherClass teacherClass,Homework homework,User user) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		
		
		
		homework.setFgradeid(teacherClass.getFgradeid());
		/*homework.setFFileName(exercise.getFFileName());*/
		homework.setFclasscode(teacherClass.getFclasscode());
		homework.setFphone(user.getFphone());
		String fname = teacherClass.getFname();
		
		String fgradeid = homework.getFgradeid();
		/*String fFileName = homework.getFFileName();*/
		String getFphone = homework.getFphone();
		String getFclasscode = homework.getFclasscode();
		
		modelAndView.addObject("fgradeid", fgradeid);
		/*modelAndView.addObject("fFileName", fFileName);*/
		
		
		
		List<Exercise> selectExercise = psychologyService.selectExercise(user);
		

		modelAndView.addObject("getFclasscode", getFclasscode);
		modelAndView.addObject("getFphone", getFphone);
		modelAndView.addObject("fName", fname);
		modelAndView.addObject("selectExercise", selectExercise);
		modelAndView.setViewName("task/ChooseClass");
		return modelAndView;
	}


	// 查看作业情况
	@RequestMapping(value = "CheckingHomework", method = RequestMethod.GET)
	public ModelAndView CheckingHomework(Homework homework,Homeupdate homeupdate) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		
		List<Homework> selectCheckingHomework = psychologyService.selectCheckingHomework(homework);
		
		//List<Homeupdate> selectHome = psychologyService.selectHome(homeupdate);
		/*int fid;
		String fphone            = null;
		String fclasscode        = null;
		String fimg              = null;
		String fchildid          = null;
		String fQRCode1          = null;
		String assigninghomework = null;
		String finspect          = null;
		String fscore            = null;
		String fcomment          = null;
		for (Homeupdate homeupdate2 : selectHome) {
			fid = homeupdate2.getFid();
			fphone = homeupdate2.getFphone();
			fclasscode = homeupdate2.getFclasscode();
			fimg = homeupdate2.getFimg();
			fchildid = homeupdate2.getFchildid();
			fQRCode1 = homeupdate2.getFQRCode1();
			assigninghomework = homeupdate2.getAssigninghomework();
			finspect = homeupdate2.getFinspect();
			fscore = homeupdate2.getFscore();
			fcomment = homeupdate2.getFcomment();
		}
		modelAndView.addObject("selectHome", selectHome);*/
		//modelAndView.addObject("selectHome", selectHome);
		modelAndView.addObject("selectCheckingHomework", selectCheckingHomework);
		modelAndView.setViewName("task/CheckingHomework");
		return modelAndView;
	}

	// 作业状态
	@RequestMapping(value = "JobStatus", method = RequestMethod.GET)
	public ModelAndView JobStatus(Homework homework) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		
		List<Homework> selectJobStatus = psychologyService.selectJobStatus(homework);
		for (Homework homework2 : selectJobStatus) {
			System.out.println(homework2.getFQRCode1()+"-----------------------------");
		}
		modelAndView.addObject("selectJobStatus", selectJobStatus);
		modelAndView.setViewName("task/JobStatus");
		return modelAndView;
	}
	
	// 跳转作业状态
		@RequestMapping(value = "JobStatus2", method = RequestMethod.GET)
		public ModelAndView JobStatus2(Homework homework,Homeupdate homeupdate) throws Exception {
			ModelAndView modelAndView = new ModelAndView();
			
				psychologyService.updateHome(homeupdate);
			
			
			List<Homework> selectJobStatus = psychologyService.selectJobStatus(homework);
			modelAndView.addObject("selectJobStatus", selectJobStatus);
			modelAndView.setViewName("task/JobStatus");
			return modelAndView;
		}
	
}
