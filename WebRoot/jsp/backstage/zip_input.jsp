<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>试题导入管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <script language="javascript" >
 function test(){

var test=document.getElementsByName('test');
	Test=test.test.value;

alert(Test);

 //var month=document.getElementsById('mm');
 //var day=document.getElementsById('day');
 //window.parent.datetable.location.href="${pageContext.request.contextPath }/date_table.jsp?yday="+Yday+"&day="+DAY+"&cardno="+Cardno+"&code="+Code;
 }

 </script>
  </head>
  
  <body>
  <form  method="post" enctype="multipart/form-data" action="servlet/UploadHandleServlet" target="success">
  <div style="border: 1px solid #D1D1D1;">
  <div style="background-color: #ECECEC;border: 1px solid #D1D1D1;" >
  题库管理
  </div>
 	<div style="border: 1px solid #D1D1D1;" >
	题库包：<input id="test" type="file" accept=".zip" style="background:#FFFFFF;" name="test" />
	<input type="submit" value="上传">
	<input style="" type="button" value="解压" onclick="window.self.success.location.href='<%=basePath%>testzip?path='+test.value+'&fsubjectid=${exercise.fsubjectid}&fversionid=${exercise.fversionid}&fclassid =${exercise.fclassid }&FVolume=${exercise.FVolume}&funit=${exercise.funit}&FHourID=${exercise.FHourID}&FVolumeQRCODE=${exercise.FVolumeQRCODE}&FUnitQRCODE=${exercise.FUnitQRCODE}'"/>
	<br/>
	输出文件夹:\\ ${exercise.fsubjectid }${exercise.fversionid }${exercise.fclassid }${exercise.FVolume}${exercise.funit}${exercise.FHourID}
	</div>
	<input type="text" id="fsubjectid" name="fsubjectid"  value="${exercise.fsubjectid }" style="display:none">
	<input type="text" id="fversionid" name="fversionid"  value="${exercise.fversionid }" style="display:none">
	<input type="text" id="fclassid" name="fclassid"  value="${exercise.fclassid }" style="display:none">
	<input type="text" id="FVolume" name="FVolume"  value="${exercise.FVolume }" style="display:none">
	<input type="text" id="funit" name="funit"  value="${exercise.funit }" style="display:none">
	<input type="text" id="FHourID" name="FHourID"  value="${exercise.FHourID }" style="display:none">
	<input type="text" id="FVolumeQRCODE" name="FVolumeQRCODE"  value="${exercise.FVolumeQRCODE }" style="display:none">
	<input type="text" id="FUnitQRCODE" name="FUnitQRCODE"  value="${exercise.FUnitQRCODE }" style="display:none">
	<iframe id="success" name="success" style="width:100%"></iframe>
	</div>
	
	
	

	
</form>
  </body>
</html>
