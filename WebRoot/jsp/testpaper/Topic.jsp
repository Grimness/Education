<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script language="javascript" >	
 function view(){
//科目ID
var subject=document.getElementsByName('fsubjectid');
	fsubjectid=subject.fsubjectid.value;
	//alert(fsubjectid);
//版本
var version=document.getElementsByName('fversionid');
	fversionid=version.fversionid.value;
	//alert(fversionid);
//年级
var grade=document.getElementsByName('fclassid');
	fclassid=grade.fclassid.value;
	//alert(fclassid);
//上下册
var using=document.getElementsByName('FVolume');
	FVolume=using.FVolume.value;

var fclass=document.getElementsByName('FHourID');
	FHourID=fclass.FHourID.value;
	//alert(FHourID);
	window.self.maintable.location.href="view_exercise1.do?fsubjectid="+fsubjectid+"&fversionid="+fversionid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funitid+"&FHourID="+FHourID;

 }
 </script>
  </head>
  <body>
  	<table border="1" style="width:100%;border-collapse:collapse;">
  		<tr style="background:#CCCCCC;height:40px;">
  			<td style="width:20%">题号</td>
  			<td>题目</td>
  			<td>操作</td>
  		</tr>
  		 <c:forEach items="${viewex}" var="ve">
  		<tr style="height:50px;" >
  			<td style="width:20%"><input type="text" name="FTitle${ve.fid}" id="FTitle${ve.fid}" style="width:50%" ></td>
  			<td onclick="window.parent.V.location='veiw_testpaper.do?fid=${ve.fid}';">${ve.FTitle1}</td>
  			<td><input type="button" value="添加" onclick="window.parent.EQ.location='ExaminationQuestions.do?fid=${ve.fid}&FExamID=${FExamID }&exfid=${exfid }&Fnumber='+FTitle${ve.fid}.value"></td>
  		</tr>
  		</c:forEach>
  	</table>
  </body>
</html>
