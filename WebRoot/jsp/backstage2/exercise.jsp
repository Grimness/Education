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
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

 <script type="text/javascript" >	
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
	//alert(FVolume);
//单元
var unit=document.getElementsByName('funit');
	funitid=unit.funit.value;
	//alert(funitid);	
/*	
//二维码总码
var code=document.getElementsByName('code');
	FVolumeQRCODE=code.code.value;
	//alert(FVolumeQRCODE);
//单元二维码
var unitcode=document.getElementsByName('unitcode');
	FUnitQRCODE=unitcode.unitcode.value;
	//alert(FUnitQRCODE);
	*/
//课时
var fclass=document.getElementsByName('FHourID');
	FHourID=fclass.FHourID.value;
	//alert(FHourID);
	var ver = $("#fversionid").find("option:selected").val();//版本
	var hour = $("#FHourID").find("option:selected").val();//课时
	if(ver==undefined){
		alert("请选择科目！");
		return ;
	}
	if(hour==undefined){
		alert("请选择课时！");
		return ;
	}
	window.self.maintable.location.href="view_exercise1.do?fsubjectid="+fsubjectid+"&fversionid="+fversionid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funitid+"&FHourID="+FHourID;

 }
 
 
 function HourQR(){
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
	//alert(FVolume);
//单元
var unit=document.getElementsByName('funit');
	funitid=unit.funit.value;
	//alert(funitid);	
/*	
//二维码总码
var code=document.getElementsByName('code');
	FVolumeQRCODE=code.code.value;
	//alert(FVolumeQRCODE);
//单元二维码
var unitcode=document.getElementsByName('unitcode');
	FUnitQRCODE=unitcode.unitcode.value;
	//alert(FUnitQRCODE);
	*/
//课时
var fclass=document.getElementsByName('FHourID');
	FHourID=fclass.FHourID.value;
	//alert(FHourID);
	window.open('${pageContext.request.contextPath }/add_ksqr.do?fsubjectid='+fsubjectid+'&fversionid='+fversionid+'&fclassid='+fclassid+'&FVolume='+FVolume+'&funit='+funitid+'&FHourID='+FHourID,"newwindow", "height=300, top=150,left=500,width=350, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");

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
/*
var code=document.getElementsByName('code');
	FVolumeQRCODE=code.code.value;
	//alert(FVolumeQRCODE);
//单元二维码
var unitcode=document.getElementsByName('unitcode');
	FUnitQRCODE=unitcode.unitcode.value;*/
	//alert(FUnitQRCODE);
//课时
var fclass=document.getElementsByName('fclass');
	FHourID=fclass.fclass.value;
	//alert(FHourID);
 window.parent.maintable.location.href="add_exercise.do?fsubjectid="+fsubjectid+"&fversionid="+fversionid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funitid+"&FVolumeQRCODE="+FVolumeQRCODE+"&FUnitQRCODE="+FUnitQRCODE+"&FHourID="+FHourID;
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
 
 <script type="text/javascript">  
function setSecond(obj){  
    var val = obj.value;  
    if(val == 'YW'){  
        var sec = document.getElementById('fversionid');  
        sec.options[0] = new Option("人教版","RJ");  
        sec.options[1] = new Option("语文S版","YW");  
    }else if(val=='SX'){  
        var sec = document.getElementById('fversionid');  
        sec.options[0] = new Option("人教版","RJ");  
         sec.options[1] = new Option("北师大版","BS");  
    } 
    else if(val=='YY'){
    	 var sec = document.getElementById('fversionid');  
        sec.options[0] = new Option("人教版","RJ");  
         sec.options[1] = new Option("开心版","KX");  
    }    
    getDy();
	$("#FHourID").html("");
}  


  function view1(){
   document.forms.example.action="view_exercise1.do";
 document.forms.example.target="maintable";
	document.forms.example.submit(); 
  }
  
  function addexercise(){
	  var version = $("#fversionid").find("option:selected").val();//版本
		var subject = $("#fsubjectid").find("option:selected").val();//科目
		var grade = $("#fclassid").find("option:selected").val();//年级
		var book = $("#FVolume").find("option:selected").val();//上下册
		var funit = $("#funit").find("option:selected").val();//单元
		var FHourID = $("#FHourID").find("option:selected").val();//课时
		if(version==undefined){
			alert("请选择科目！");
			return ;
		}
		if(funit==undefined){
			alert("请选择单元！");
			return ;
		}
		
		$("#exerise").submit();
  }
  
  function getDy(){
		var version = $("#fversionid").find("option:selected").val();//版本
		var subject = $("#fsubjectid").find("option:selected").val();//科目
		var grade = $("#fclassid").find("option:selected").val();//年级
		var book = $("#FVolume").find("option:selected").val();//上下册
		$("#FHourID").html("");
		$.ajax({
			type:"GET",
			url:"getUnit.do?fsubject="+subject+"&fgrade="+grade+"&fbook="+book+"&fversion="+version,
			dataType : "json",
			success : function(result){
				$("#funit").html("");
				$("#funit").append("<option  value=\"\">-请选择-</option>");
				$.each(result.getUnit,function(i,n){
					$("#funit").append("<option  value=\""+n.funit+"\">"+n.funitname+"</option>");
				});
			}
		});
	
	}
  
  function getKs(){
		var version = $("#fversionid").find("option:selected").val();//版本
		var subject = $("#fsubjectid").find("option:selected").val();//科目
		var grade = $("#fclassid").find("option:selected").val();//年级
		var book = $("#FVolume").find("option:selected").val();//上下册
		var funit = $("#funit").find("option:selected").val();//单元
		$.ajax({
			type:"GET",
			url:"getHour.do?fsubject="+subject+"&fgrade="+grade+"&fbook="+book+"&fversion="+version+"&funit="+funit,
			dataType : "json",
			success : function(result){
				$("#FHourID").html("");
				$.each(result.getHour,function(i,n){
					$("#FHourID").append("<option  value=\""+n.fhour+"\">"+n.fhourname+"</option>");
				});
			}
		});
	}
  
  
  
</script>  
  </head>
  
  <body>
    <form name="exerise"  method="post" action="add_exercise2.do" id="exerise" target="maintable" >
  	<div style="border: 1px solid #D1D1D1;">
   <div style="background-color: #ECECEC;border: 1px solid #D1D1D1;width:100% " > 
  	题库管理 
  </div>
  	<div style="border: 1px solid #D1D1D1;">
  		科目：
  <select id="fsubjectid" name="fsubjectid" onchange="setSecond(this)">
   <option value ="" selected>-请选择-</option>
  <option value ="YW" >语文</option>
  <option value ="SX">数学</option>
  <option value="YY">英语</option>
</select>
&nbsp;
版本：
  <select id="fversionid" name="fversionid" onchange="getDy()">
 
</select>
&nbsp;
年级：
  <select id="fclassid" name="fclassid" onchange="getDy()">
  <option value="3">三年级</option>
  <option value="4">四年级</option>
  <option value="5">五年级</option>
  <option value="6">六年级</option>
</select>
&nbsp;
上下册：
  <select id="FVolume" name="FVolume" onchange="getDy()">
    <option value ="2">下册</option>
  <option value ="1">上册</option>
  <!-- <option value="0">不分册</option> -->
</select>
&nbsp;
单元：<select id="funit" name="funit" onchange="getKs()">
 
   
</select>
课时：<select id="FHourID" name="FHourID">
	
</select>




<input type="button" value="查看/修改题目" onclick="view();">
<input type="button" value="增加题目" onclick="addexercise()" >
<input type="button" value="增加单元微课材料" onclick="HourQR()"  >
<input type="button" value="增加总码" onclick="" style="display:none">
<input type="button" value="增加课时共用材料" onclick="javascript:window.open('material.do')" style="display:none">

  	</div>
  	<div >
  	<iframe name="maintable"  class="maintable"  style="width:100%;height:80%;"></iframe>
  	</div>
  </div>
  </form>
  </body>
</html>
