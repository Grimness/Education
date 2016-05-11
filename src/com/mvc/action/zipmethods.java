package com.mvc.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.formula.functions.Replace;

import com.business.utils.Mysql;

public class zipmethods extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public zipmethods() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fpath=request.getParameter("path");
		String fsubjectid=request.getParameter("fsubjectid");
		String fversionid=request.getParameter("fversionid");
		String fclassid =request.getParameter("fclassid ");
		String FVolume=request.getParameter("FVolume");
		String funit=request.getParameter("funit");
		String FHourID=request.getParameter("FHourID");
		String FVolumeQRCODE=request.getParameter("FVolumeQRCODE");
		String FUnitQRCODE=request.getParameter("FUnitQRCODE");
		Mysql da=new Mysql();
		String  sql=null;
		sql="update t_exercise set FHourFileName='KS.png',FFileName=CONCAT( case LENGTH(ftitle) when 1 then CONCAT('0', FTitle,'N0') when 2 then CONCAT( FTitle,'N0') when 3 then CONCAT('0', FTitle)  end ,'TM.png'),FAnsFileName=CONCAT( case LENGTH(ftitle) when 1 then CONCAT('0', FTitle,'N0') when 2 then CONCAT( FTitle,'N0') when 3 then CONCAT('0', FTitle) end ,'DA.png'),FPointersFileName=CONCAT( case LENGTH(ftitle) when 1 then CONCAT('0', FTitle,'N0') when 2 then CONCAT( FTitle,'N0') when 3 then CONCAT('0', FTitle) end ,'DB.png'),FTipsFileName=CONCAT( case LENGTH(ftitle) when 1 then CONCAT('0', FTitle,'N0') when 2 then CONCAT( FTitle,'N0') when 3 then CONCAT('0', FTitle) end ,'TS.png'),FAudioFileName=CONCAT( case LENGTH(ftitle) when 1 then CONCAT('0', FTitle,'N0') when 2 then CONCAT( FTitle,'N0') when 3 then CONCAT('0', FTitle) end ,'YP.mp3'),FGyFileName=CONCAT( case LENGTH(ftitle) when 1 then CONCAT('0', FTitle,'N0') when 2 then CONCAT( FTitle,'N0') when 3 then CONCAT('0', FTitle) end ,'GY.png') where 1=1 and fsubjectid='"+fsubjectid+"' and fversionid='"+fversionid+"' and fclassid="+fclassid+" and FVolume="+FVolume+" and funit='"+funit+"' and FVolumeQRCODE='"+FVolumeQRCODE+"' and FUnitQRCODE='"+FUnitQRCODE+"' and FHourID="+FHourID+"";
		da.executeUpdate(sql);
		 File file = new File(fpath); //获取压缩文件名
		 String inputpath = file.getName();  
		 //System.out.print(fileName);
		//String path = (String)request.getContextPath();
		 String outpath = getServletContext().getRealPath("/");//解压路径
		 //System.out.print(path);
		long startTime=System.currentTimeMillis();
		try {
			ZipInputStream Zin=new ZipInputStream(new FileInputStream(outpath+"upload\\"+inputpath));//输入源zip路径
			BufferedInputStream Bin=new BufferedInputStream(Zin);
			String Parent=outpath+"resources\\"+fsubjectid+fversionid+fclassid+FVolume+funit+FHourID; //输出路径（文件夹目录）
			String Parent1="resources\\"+fsubjectid+fversionid+fclassid+FVolume+funit+FHourID+"\\";//插入数据库目录
			 Parent1=Parent1.replace("\\", "\\\\");
			File Fout=null;
			ZipEntry entry;
			try {
				while((entry = Zin.getNextEntry())!=null){  
				    if(entry.isDirectory())continue; 
					Fout=new File(Parent,entry.getName());
					if(!Fout.exists()){
						(new File(Fout.getParent())).mkdirs();
					}
					FileOutputStream out=new FileOutputStream(Fout);
					BufferedOutputStream Bout=new BufferedOutputStream(out);
					int b;
					while((b=Bin.read())!=-1){
						Bout.write(b);
					}
					Bout.close();
					out.close();
					 String fileName = Fout.getName();
					 //System.out.print(fileName);
					
					 //添加题目
					 sql="update t_exercise set FPath='"+Parent1+"' where FFileName='"+fileName+"' and fsubjectid='"+fsubjectid+"' and fversionid='"+fversionid+"' and fclassid="+fclassid+" and FVolume="+FVolume+" and funit='"+funit+"' and FVolumeQRCODE='"+FVolumeQRCODE+"' and FUnitQRCODE='"+FUnitQRCODE+"' and FHourID="+FHourID+"";
					 da.executeUpdate(sql);
					 //答案
					 sql="update t_exercise set FAnsPath='"+Parent1+"' where FAnsFileName='"+fileName+"' and fsubjectid='"+fsubjectid+"' and fversionid='"+fversionid+"' and fclassid="+fclassid+" and FVolume="+FVolume+" and funit='"+funit+"' and FVolumeQRCODE='"+FVolumeQRCODE+"' and FUnitQRCODE='"+FUnitQRCODE+"' and FHourID="+FHourID+"";
					 da.executeUpdate(sql);
					 //点拨听力材料
					 sql="update t_exercise set FPointersPath='"+Parent1+"' where FPointersFileName='"+fileName+"' and fsubjectid='"+fsubjectid+"' and fversionid='"+fversionid+"' and fclassid="+fclassid+" and FVolume="+FVolume+" and funit='"+funit+"' and FVolumeQRCODE='"+FVolumeQRCODE+"' and FUnitQRCODE='"+FUnitQRCODE+"' and FHourID="+FHourID+"";
					 da.executeUpdate(sql);
					 //家长辅导提示
					 sql="update t_exercise set FTipsPath='"+Parent1+"' where FTipsFileName='"+fileName+"' and fsubjectid='"+fsubjectid+"' and fversionid='"+fversionid+"' and fclassid="+fclassid+" and FVolume="+FVolume+" and funit='"+funit+"' and FVolumeQRCODE='"+FVolumeQRCODE+"' and FUnitQRCODE='"+FUnitQRCODE+"' and FHourID="+FHourID+"";
					 da.executeUpdate(sql);
					 //巩固材料
					 sql="update t_exercise set FGyPath='"+Parent1+"' where FGyFileName='"+fileName+"' and fsubjectid='"+fsubjectid+"' and fversionid='"+fversionid+"' and fclassid="+fclassid+" and FVolume="+FVolume+" and funit='"+funit+"' and FVolumeQRCODE='"+FVolumeQRCODE+"' and FUnitQRCODE='"+FUnitQRCODE+"' and FHourID="+FHourID+"";
					 da.executeUpdate(sql);
					 //课时
					 sql="update t_exercise set FHourPath='"+Parent1+"' where FHourFileName='"+fileName+"' and fsubjectid='"+fsubjectid+"' and fversionid='"+fversionid+"' and fclassid="+fclassid+" and FVolume="+FVolume+" and funit='"+funit+"' and FVolumeQRCODE='"+FVolumeQRCODE+"' and FUnitQRCODE='"+FUnitQRCODE+"' and FHourID="+FHourID+"";
					 da.executeUpdate(sql);
					 //System.out.print(sql);
					//System.out.println(Fout+"解压成功");	
				}
				Bin.close();
				Zin.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long endTime=System.currentTimeMillis();
		System.out.println("耗费时间： "+(endTime-startTime)+" ms");
		request.getRequestDispatcher("jsp/backstage/success.jsp").forward(request, response);
		
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
