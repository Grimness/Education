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
    
    <title>组卷</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	select{width:100px;}
	</style>
	<script>  
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
}  


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
	

var fLabel=document.getElementsByName('FLabel');
	FLabel=fLabel.FLabel.value;
	//alert(FLabel);
var fExamID=document.getElementsByName('FExamID');
	FExamID=fExamID.FExamID.value;
	//alert(FLabel);
var Exfid=document.getElementsByName('exfid');
	exfid=Exfid.exfid.value;
	window.self.T.location.href="view_exercise_zj.do?fsubjectid="+fsubjectid+"&fversionid="+fversionid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funitid+"&FLabel="+FLabel+"&FExamID="+FExamID+"&exfid="+exfid;

 }
</script>  
  </head>
  <body>
  <input type="text" name="FExamID" id="FExamID" value="${tx.FExamID }" style="display:none" >
  <input type="text" name="exfid" id="exfid" value="${tx.exfid }" style="display:none" >
  	<table border="1" style="width:100%;border-collapse:collapse;">
  		<tr style="background:#CCCCCC;height:30px;">
  			<td colspan="3">组卷</td>
  		</tr>
  		<tr style="height:50px;">
  			<td colspan="2" style="padding-left:5%;">题型：${tx.fname}</td>
  			<td><div style="text-align:center;"><input style="width:100px;height:28px;" type="button" value="确定" onclick="window.close()"></div></td>
  		</tr>
  		<tr>
  			<td style="width:45%;">
  			题目选择</br>
  			<div>
  				<div style="float:left;margin:0 10%;">
  				      科目： 
  		<select id="fsubjectid" name="fsubjectid" onchange="setSecond(this)">
   		<option value ="" selected>-请选择-</option>
  		<option value ="YW" >语文</option>
  		<option value ="SX">数学</option>
  		<option value="YY">英语</option>
					</select>
  				</div>
  				<div style="float:left;margin:0 10%;">
  					 版本：<select id="fversionid" name="fversionid">
 					
						</select>
  				</div>
  			</div>
  			<div>
  				<div style="float:left;margin:1% 10%;">
  				      年级：<select id="fclassid" name="fclassid">
					
					  <option value="3">三年级</option>
					  <option value="4">四年级</option>
					  <option value="5">五年级</option>
					  <option value="6">六年级</option>
					</select>
  				</div>
  				<div style="float:left;margin:1% 10%;">
			  上下册：<select id="FVolume" name="FVolume">
			 
			  <option value ="1">上册</option>
			  <option value ="2">下册</option>
			  <!-- <option value="0">不分册</option> -->
			</select>
  				</div>
  			</div>
  			<div style="margin:1% 10%;">单元：<select id="funit" name="funit">
  			
			 <c:forEach items="${dy}" var="dy">
			  <option value ="${dy.FNumber}">${dy.FName}</option>
			 </c:forEach>
			 </select>
  				</div>
  			<div>
  				<div style="float:left;margin:0 5%;">
  				<input type="text" name="FLabel" id="FLabel" style="display:none"></div>
  				
  				<div style="float:left;margin:0 5%;padding-left:40%" ><input type="button" value="查找" onclick="view();"></div>
  			</div>
  			</td>
  			<td rowspan="3" style="width:10%;">
  			<div>
				<div style="margin:5% 0;"></div>
				<div></div>  			
  			</div>
  			</td>
  			<td rowspan="3" style="width:45%;">	
  			<div >
  				<div>已选择题目</div>
  				<div><iframe src="ExaminationQuestions.do?fid=0&FExamID=${tx.FExamID }&exfid=${tx.exfid }" name="EQ" id="EQ" frameborder="0" class="EQ" style="width:100%;height:700px;"></iframe></div>
  				
  			</div>
  			
  			</td>
  		</tr>
  		<tr>
  			<td><iframe  name="T" id="T" frameborder="0" class="T" style="width:100%;height:250px;"></iframe></td>
  		</tr>
  		<tr >
  			<td >
  			<iframe  name="V" id="V" frameborder="0" class="V" style="width:100%;height:400px;"></iframe>
  			</td>
  		</tr>
  	</table>
  </body>
</html>
