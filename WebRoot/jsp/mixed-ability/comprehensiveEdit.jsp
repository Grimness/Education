<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'comprehensiveEdit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	
	

  </head>
  
  <body>
  <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
  <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/practiceEdit.css">
 <script type="text/javascript">

 	function imgAdd(){
 		$("#Fimg").click();
 	}
 	
 	function announce(){
 		
 		var FPhoto1 = $("#FPhoto1").val();
 		var FPhoto2 = $("#FPhoto2").val();
 		var FPhoto3 = $("#FPhoto3").val();
 		var FPhoto4 = $("#FPhoto4").val();
 		if(typeof(FPhoto1)=="undefined") FPhoto1="";
 		if(typeof(FPhoto2)=="undefined") FPhoto2="";
 		if(typeof(FPhoto3)=="undefined") FPhoto3="";
 		if(typeof(FPhoto4)=="undefined") FPhoto4="";
 		var FStudentID = sessionStorage.getItem("FStudentID");
 		var FPhone = sessionStorage.getItem("FPhone");
 		/*清空记录*/
 		sessionStorage.setItem("html","");
		sessionStorage.setItem("count","");
		sessionStorage.setItem("text","");
 		edit.action="practicesEdit.do?FStudentID="+FStudentID+"&FPhone="+FPhone+"&FPhoto1="+FPhoto1+"&FPhoto2="+FPhoto2+"&FPhoto3="+FPhoto3+"&FPhoto4="+FPhoto4;
 		$("#edit").submit(); 
 		
 		
 	}
 	function img(){
 		var text = $(".text").val();
 		sessionStorage.setItem("text",text);
 		var count = sessionStorage.getItem("count");
 		if(count==""||count==null) count = 0;
		count++;
 		if(count==5){
			 alert("最多只能添加4张图片");
			 return ;
		 }
		sessionStorage.setItem("count",count);
 		imgForm.action="uploadImg.do";
 		$("#imgForm").submit();
 		
 	}
 </script>
 <div class="pageDiv" >
 	<script type="text/javascript">
<!--

//-->
$(function(){
	if(${filename!=null}){
		var text = sessionStorage.getItem("text")
		var html = sessionStorage.getItem("html");
		if(html==null){
		html = "";
		}
		var count = sessionStorage.getItem("count");
		html += "<input type=\"image\" src=\"<%=basePath%>upload/${filename}\" value=\"${filename}\" name=\"FPhoto"+count+"\" id=\"FPhoto"+count+"\"  class=\"img-responsive practiceImg\" align=\"left\">";
		sessionStorage.setItem("html",html);
		$(".practiceImg").append(html);
		$(".text").append(text);
	}
})
</script>
  	<form id="edit"   method="post" >
  	<div class="textareaDiv">
  		<textarea class="text" autofocus="autofocus"  name="FContent" rows="5" cols="50">
  		
  		</textarea>
  	</div>
 
  	<div class="practiceImg">
  	</div>
  	</form>
  	<form method="post" id="imgForm" enctype="multipart/form-data">
  	<input  type="file" name="Fimg" id="Fimg" onchange="img()" style="display: none;" >
  	</form>
  
  	<button type="button" class="btn btn-default editbtn" style="background-image:url('./images/comprehensive_edit.png');" onclick="imgAdd()" ></button>
	
  
  	<div align="center">
	  <button type="button" class="btn btn-primary btn-lg btn-block postbtn" style="width: 300px" onclick="announce()">
    	发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;布
  	 </button>
  	 </div>
  </div>
  </body>
</html>
