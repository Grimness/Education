<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>试题导入</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script language="javascript" >	
 function view(){
//科目ID
var subject=document.getElementsByName('subject');
	fsubjectid=subject.subject.value;
	//alert(fsubjectid);
//版本
var version=document.getElementsByName('version');
	fversionid=version.version.value;
	//alert(fversionid);
//年级
var grade=document.getElementsByName('grade');
	fclassid=grade.grade.value;
	//alert(fclassid);
//上下册
var using=document.getElementsByName('using');
	FVolume=using.using.value;
	//alert(FVolume);
//单元
var unit=document.getElementsByName('unit');
	funitid=unit.unit.value;
	//alert(funitid);	
//二维码总码
var code=document.getElementsByName('code');
	FVolumeQRCODE=code.code.value;
	//alert(FVolumeQRCODE);
//单元二维码
var unitcode=document.getElementsByName('unitcode');
	FUnitQRCODE=unitcode.unitcode.value;
	//alert(FUnitQRCODE);
//课时
var fclass=document.getElementsByName('fclass');
	FHourID=fclass.fclass.value;
	//alert(FHourID);
 window.self.maintable.location.href="${pageContext.request.contextPath }/view_exercise.do?fsubjectid="+fsubjectid+"&fversionid="+fversionid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funitid+"&FVolumeQRCODE="+FVolumeQRCODE+"&FUnitQRCODE="+FUnitQRCODE+"&FHourID="+FHourID;
 //}
 }
 
  function add(){
//科目ID
var subject=document.getElementsByName('subject');
	fsubjectid=subject.subject.value;
	//alert(fsubjectid);
//版本
var version=document.getElementsByName('version');
	fversionid=version.version.value;
	//alert(fversionid);
//年级
var grade=document.getElementsByName('grade');
	fclassid=grade.grade.value;
	//alert(fclassid);
//上下册
var using=document.getElementsByName('using');
	FVolume=using.using.value;
	//alert(FVolume);
//单元
var unit=document.getElementsByName('unit');
	funitid=unit.unit.value;
	//alert(funitid);	
//二维码总码
var code=document.getElementsByName('code');
	FVolumeQRCODE=code.code.value;
	//alert(FVolumeQRCODE);
//单元二维码
var unitcode=document.getElementsByName('unitcode');
	FUnitQRCODE=unitcode.unitcode.value;
	//alert(FUnitQRCODE);
//课时
var fclass=document.getElementsByName('fclass');
	FHourID=fclass.fclass.value;
	//alert(FHourID);
 window.self.maintable.location.href="${pageContext.request.contextPath }/add_exercise.do?fsubjectid="+fsubjectid+"&fversionid="+fversionid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funitid+"&FVolumeQRCODE="+FVolumeQRCODE+"&FUnitQRCODE="+FUnitQRCODE+"&FHourID="+FHourID;
 //}
 }
 
  function upzip(){
//科目ID
var subject=document.getElementsByName('subject');
	fsubjectid=subject.subject.value;
	//alert(fsubjectid);
//版本
var version=document.getElementsByName('version');
	fversionid=version.version.value;
	//alert(fversionid);
//年级
var grade=document.getElementsByName('grade');
	fclassid=grade.grade.value;
	//alert(fclassid);
//上下册
var using=document.getElementsByName('using');
	FVolume=using.using.value;
	//alert(FVolume);
//单元
var unit=document.getElementsByName('unit');
	funitid=unit.unit.value;
	//alert(funitid);	
//二维码总码
var code=document.getElementsByName('code');
	FVolumeQRCODE=code.code.value;
	//alert(FVolumeQRCODE);
//单元二维码
var unitcode=document.getElementsByName('unitcode');
	FUnitQRCODE=unitcode.unitcode.value;
	//alert(FUnitQRCODE);
//课时
var fclass=document.getElementsByName('fclass');
	FHourID=fclass.fclass.value;
	//alert(FHourID);
 window.open("${pageContext.request.contextPath }/zip_exercise.do?fsubjectid="+fsubjectid+"&fversionid="+fversionid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funitid+"&FVolumeQRCODE="+FVolumeQRCODE+"&FUnitQRCODE="+FUnitQRCODE+"&FHourID="+FHourID);
 //}
 }
 </script>
  </head>
  
  <body>
    <form name="exerise"  method="post" action="" id="exerise">
  	<div style="border: 1px solid #D1D1D1;">
   <div style="background-color: #ECECEC;border: 1px solid #D1D1D1;width:100% " > 
  	题库管理 
  </div>
  	<div style="border: 1px solid #D1D1D1;">
  		科目：
  <select id="subject" name="subject">
  <option value ="YW">语文</option>
  <option value ="SX">数学</option>
  <option value="YY">英语</option>
</select>
&nbsp;
版本：
  <select id="version" name="version">
  <option value ="KX">开心版</option>
  <option value ="RJ">人教</option>
  <option value="BS">北师</option>
  <option value="WK">微课</option>
</select>
&nbsp;
年级：
  <select id="grade" name="grade">
  <option value ="1">一年级</option>
  <option value ="2">二年级</option>
  <option value="3">三年级</option>
  <option value="4">四年级</option>
  <option value="5">五年级</option>
  <option value="6">六年级</option>
</select>
&nbsp;
上下册：
  <select id="using" name="using">
  <option value ="1">上册</option>
  <option value ="2">下册</option>
  <option value="0">不分册</option>
</select>
&nbsp;
单元：<select id="unit" name="unit">
 <c:forEach items="${dy}" var="dy">
  <option value ="${dy.FNumber}">${dy.FName}</option>
 
  </c:forEach>
</select>
课时：<select id="fclass" name="fclass">
	 <c:forEach items="${ks}" var="ks">
  <option value ="${ks.FNumber}">${ks.FName}</option>
 
  </c:forEach>
</select>
&nbsp;
<br/>
二维码总码：<input type="text" name="code" id="code">

单元二维码：<input type="text" name="unitcode" id="unitcode">

<input type="button" value="增加题目" onclick="add()">
<input type="button" value="查看/修改题目" onclick="view()">
<input type="button" value="上传试题图片" onclick="upzip()">
  	</div>
  	<div >
  	<iframe name="maintable" class="maintable"  style="width:100%;height:80%;"></iframe>
  	</div>
  </div>
  </form>
  </body>
</html>
