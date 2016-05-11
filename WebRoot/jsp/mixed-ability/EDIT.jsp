<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>编辑</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<script type="text/javascript">
$(function(){
	if(${filename!=null}){
		var text = sessionStorage.getItem("text")
		var html = sessionStorage.getItem("html");
		if(html==null){
		html = "";
		}
		var count = sessionStorage.getItem("count");
		html += "<input type=\"image\" style=\"width: 80px;height: 69px;margin-left: 10px;\" src=\"<%=basePath%>upload/${filename}\" value=\"${filename}\" name=\"FPhoto"+count+"\" id=\"FPhoto"+count+"\"  class=\"img-responsive practiceImg\" align=\"left\">";
		sessionStorage.setItem("html",html);
		$(".practiceImg").append(html);
		$(".text").append(text);
	}
})
function imgAdd(){
 		$("#Fimg").click();
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
 function announce(){
 		
 		var FPhoto1 = $("#FPhoto1").val();
 		var FPhoto2 = $("#FPhoto2").val();
 		var FPhoto3 = $("#FPhoto3").val();
 		var FPhoto4 = $("#FPhoto4").val();
 		if(typeof(FPhoto1)=="undefined") FPhoto1="";
 		if(typeof(FPhoto2)=="undefined") FPhoto2="";
 		if(typeof(FPhoto3)=="undefined") FPhoto3="";
 		if(typeof(FPhoto4)=="undefined") FPhoto4="";
 		var FStudentID = localStorage.getItem("FStudentID");
 		var FPhone = localStorage.getItem("FPhone");
 		/*清空记录*/
 		sessionStorage.setItem("html","");
		sessionStorage.setItem("count","");
		sessionStorage.setItem("text","");
 		edit.action="practicesEdit.do?FStudentID="+FStudentID+"&FPhone="+FPhone+"&FPhoto1="+FPhoto1+"&FPhoto2="+FPhoto2+"&FPhoto3="+FPhoto3+"&FPhoto4="+FPhoto4;
 		$("#edit").submit(); 
 		
 		
 	}
 	
</script>
<body style="background:#E5E5E5;">
	
	<table border="0"  cellspacing="0" style="width:100%;collapse:collapse;">
		<form id="edit"   method="post" >
		<tr style="background:#FFFFFF;">
			<td style="color:#CCCCCC;">
			<textarea style="width: 100%;height: 150px;font-size:x-large;"  autofocus="autofocus"  name="FContent"  rows="5" cols="50">
  		
  			</textarea>
			<!-- <input style="width: 100%;height: 150px;" class="text" name="FContent" value="在这里编辑内容" type="text"> -->
			</td>
		</tr>
		<tr style="background:#FFFFFF;">
			<td style="padding-left:2%;" class="practiceImg">
			</td>
		</tr>
		</form>
		<tr style="background:#FFFFFF;">
			<td style="padding-left:2%;">
			<form method="post" id="imgForm" enctype="multipart/form-data">
  			<input accept="image/*" type="file" name="Fimg" id="Fimg" onchange="img()" style="display: none;" >
  			</form>
			<img style="width: 80px;height: 69px;" src="images/comprehensive_edit.png" onclick="imgAdd()" >
			</td>
		</tr>
		<tr>
			<td style="text-align:center;padding-top:10%;"><input onclick="announce()" style="background:#1E90FF;color:#FFFFFF;width:320px;height:40px;" type="button" value="发布"></td>
		</tr>
	</table>
</body>
</html>
