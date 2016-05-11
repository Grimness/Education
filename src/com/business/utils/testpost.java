package com.business.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

import net.sf.json.JSONObject;

public class testpost {
	
	public static void TestPost() throws IOException {  
		String fname="测试2";
		new String(fname.getBytes("iso-8859-1"),"UTF-8");
		        URL url = new URL("https://api.weixin.qq.com/shakearound/device/applyid?access_token=y4LT3XuMTcdM0_Dxv2IoBMbIGRNfPQtqozBeKqYKDuCwS3I2ZhjHAErzyYsNqHRGQttqNSdA7kA_YPq1u_RcoVSEbYdANdT5HWcz1WhsiW4IIIfADALLL");  
		        URLConnection connection = url.openConnection();  
		        connection.setDoOutput(true);  
		        OutputStreamWriter out = new OutputStreamWriter(connection.getOutputStream(), "8859_1");
		        //PrintWriter out = response.getWriter();
		        JSONObject json = new JSONObject();
		        json.put("quantity",3);
		        json.put("apply_reason","测试");
		        json.put("comment","测试");
		        System.out.print(json);
		        out.write(json.toString()); // 向页面传递数据。post的关键所在！  
		        out.flush();  
		        out.close();  
		        // 一旦发送成功，用以下方法就可以得到服务器的回应：  
		        String sCurrentLine;  
		        String sTotalString;  
		        sCurrentLine = "";  
		        sTotalString = "";  
		        InputStream l_urlStream;  
		        l_urlStream = connection.getInputStream();  
		        // 传说中的三层包装阿！  
		        BufferedReader l_reader = new BufferedReader(new InputStreamReader(  
		                l_urlStream));  
		        while ((sCurrentLine = l_reader.readLine()) != null) {  
		            sTotalString += sCurrentLine + "\r\n";  
		  
		        }  
		        System.out.println(sTotalString);  
		          
		    }  
		  
		    public static void main(String[] args) throws IOException {  
		        TestPost();  
		    } 
}
