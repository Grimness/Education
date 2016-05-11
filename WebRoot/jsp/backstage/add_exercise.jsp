<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("UTF-8");%>  
<%response.setCharacterEncoding("UTF-8");%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>题库导入</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css"> 
	body,table{ 
	font-size:12px; 
	} 
	table{ 
	table-layout:fixed; 
	empty-cells:show; 
	border-collapse: collapse; 
	margin:0 auto; 
	} 
	td{ 
	height:30px; 
	} 
	h1,h2,h3{ 
	font-size:12px; 
	margin:0; 
	padding:0; 
	} 
	.table{ 
	border:1px solid #cad9ea; 
	color:#666; 
	} 
	.table th { 
	background-repeat:repeat-x; 
	height:30px; 
	} 
	.table td,.table th{ 
	border:1px solid #cad9ea; 
	padding:0 1em 0; 
	} 
	.table tr.alter{ 
	background-color:#EEEEE0; 
	}
	
	
	
	/*按钮*/
	.btn{display:inline-block;cursor:pointer;text-align:center; font-weight:400;white-space:nowrap;vertical-align: middle;*zoom:1;-webkit-transition:background-color .1s linear;-moz-transition:background-color .1s linear;-o-transition:background-color .1s linear;transition:background-color .1s linear;}
	a.btn:hover,a.btn:focus,a.btn:active,a.btn.active,a.btn.disabled,a.btn[disabled]{text-decoration:none}
	.btn:active,.btn.active{background-color:#ccc}
	.btn:first-child{*margin-left:0}
	.btn.active,.btn:active{-moz-box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset;-webkit-box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset; box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset;}
	 
	/*默认——灰色 通常用于取消*/
	.btn-default{background-color:#e6e6e6}
	.btn-default:hover,
	.btn-default:focus,
	.btn-default:active,
	.btn-default.active{color:#333;background-color:#c7c7c7;border-color:#c7c7c7}
	 
	/*主要——主色 通常用于确定、提交、购买、支付等*/
	.btn-primary{color:#fff;background-color:#5a98de; border-color:#5a98de}
	.btn-primary:hover,
	.btn-primary:focus,
	.btn-primary:active,
	.btn-primary.active{color:#fff;background-color:#6aa2e0;border-color:#6aa2e0}
	 
	/*次要按钮*/
	.btn-secondary{color:#fff;background-color:#3bb4f2; border-color:#3bb4f2}
	.btn-secondary:hover,
	.btn-secondary:focus,
	.btn-secondary:active,
	.btn-secondary.active{color:#fff;background-color:#0f9ae0;border-color:#0f9ae0}
	 
	/*成功*/
	.btn-success{color:#fff;background-color:#5eb95e; border-color:#5eb95e}
	.btn-success:hover,
	.btn-success:focus,
	.btn-success:active,
	.btn-success.active{color:#fff;background-color:#429842;border-color:#429842}
	 
	/*警告*/
	.btn-warning{color:#fff;background-color:#f37b1d; border-color:#f37b1d}
	.btn-warning:hover,
	.btn-warning:focus,
	.btn-warning:active,
	.btn-warning.active{color:#fff;background-color:#c85e0b;border-color:#c85e0b}
	 
	/*危险*/
	.btn-danger{color:#fff;background-color:#dd514c; border-color:#dd514c}
	.btn-danger:hover,
	.btn-danger:focus,
	.btn-danger:active,
	.btn-danger.active{color:#fff;background-color:#c62b26;border-color:#c62b26}
	 
	/*链接*/
	.btn-link{color:#0e90d2;cursor:pointer;border-color:transparent;background-color:transparent;}
	.btn-link:hover,
	.btn-link:focus,
	.btn-link:active,
	.btn-link.active{color:#095f8a;text-decoration:underline;background-color:transparent}
	 
	/*禁用状态*/
	.btn.disabled{cursor:not-allowed;background-image:none;opacity:.65;filter:alpha(opacity=65);box-shadow:none; pointer-events:none;} 
	</style> 
	<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script> 
	<script language="javascript">
    var row_count = 0; 
	function addNew() 
	{ 
	var table1 = $('#table1'); 
	var firstTr = table1.find('tbody>tr:first'); 
	var row = $("<tr></tr>"); 
	var td = $("<td></td>"); 
	var list=$("<td><input type='text' id='FTitle' name='FTitle' style='width:100%'></td>"
	+ "\n<td><input type='text' id='FHourDesc' name='FHourDesc' style='width:100%'></td>"
	+ "\n<td></td>"
	+ "\n<td><input type='text' id='FQRCode1' name='FQRCode1' style='width:100%'></td>"
	+ "\n<td><input type='text' id='FTitle1' name='FTitle1' style='width:100%'></td>"
	+ "\n<td><input type='text' id='FTitle2' name='FTitle2' style='width:100%'></td>"
	+ "\n<td></td>"
	+ "\n<td></td>"
	+ "\n<td></td>"
	+ "\n<td></td>"
	+ "\n<td></td>"
	+ "\n<td></td>"
	+ "\n<td ><input type='text' id='FLabel' name='FLabel' style='width:100%' ></td>"
	+ "\n<td ><input type='text' id='FAnswer' name='FAnswer' style='width:100%'></td>"
	+ "\n<td ><input type='text' id='FQRCode2' name='FQRCode2' style='width:100%'></td>"
	+ "\n<td style='display:none'><input type='text' id='fsubjectid' name='fsubjectid' style='width:100%'  value='${exercise.fsubjectid}'></td>"
	+ "\n<td style='display:none'><input type='text' id='fversionid' name='fversionid' style='width:100%'  value='${exercise.fversionid}'></td>"
	+ "\n<td style='display:none'><input type='text' id='fclassid' name='fclassid' style='width:100%'  value='${exercise.fclassid}'></td>"
	+ "\n<td style='display:none'><input type='text' id='FVolume' name='FVolume' style='width:100%'  value='${exercise.FVolume}'></td>"
	+ "\n<td style='display:none'><input type='text' id='funit' name='funit' style='width:100%'  value='${exercise.funit}'></td>"
	+ "\n<td style='display:none'><input type='text' id='FVolumeQRCODE' name='FVolumeQRCODE' style='width:100%'  value='${exercise.FVolumeQRCODE}'></td>"
	+ "\n<td style='display:none'><input type='text' id='FUnitQRCODE' name='FUnitQRCODE' style='width:100%'  value='${exercise.FUnitQRCODE}'></td>"
	+ "\n<td style='display:none'><input type='text' id='FHourID' name='FHourID' style='width:100%'  value='${exercise.FHourID}'></td>"
	);
	
	row.append(list); 
	table1.append(row); 
	row_count++; 
	} 
	

   </script>
  </head>
  
  <body >
  <form id="form1" name="form1" method="post" action="add_finish.do" >
  <input type="button" value="+"  onclick="addNew();"> 
  <input type="submit" value="导入">
    <table width="100%" class="table" id="table1"> 
    <tbody>
<tr> 
<th>序号</th> 
<th>课时描述</th> 
<th>课时</th> 
<th>课时二维码</th> 
<th>大标题</th> 
<th>小标题</th> 
<th>题目</th> 
<th>答案</th> 
<th>点拨/听力材料</th> 
<th>家长辅助提示</th> 
<th>共用材料</th> 
<th>音频文件</th>
<th>文字标签</th>
<th>答案</th>
<th>微课二维码</th>    

</tr > 

</tbody>
</table>



</form>
  </body>
  
</html>
