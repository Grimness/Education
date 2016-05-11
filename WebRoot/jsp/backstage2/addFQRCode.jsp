<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加微课二维码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript">
	
	
	
	 function wk(){
  document.forms.example.action="servlet/UploadHandleServlet";
   document.forms.example.target="success";
  document.forms.example.enctype="multipart/form-data";
	document.forms.example.submit();
  }
  
 
  
    function add(){
  document.forms.example.action="add_wkqrcode_fin.do";
 document.forms.example.target="";
 document.forms.example.enctype="";
	document.forms.example.submit();
  }
</script>	
  </head>
  
  <body>
  <form name="example" method="post" >
  <input type="text" id="fid" name="fid" value="${ex.fid}" style="display:none">
  <table>
<tr> 
	<td> 微课材料：<input type="file"   id="Fwkmaterial" name="Fwkmaterial" style="background:#FFFFFF;">
  <input type="button" style="background:#F2F2F2;" value="上传" onclick="wk()"></td>
  <td>  微课二维码:<input type="text" id="FQRCode2" name="FQRCode2"> 
  <input type="button" onclick="add()" value="添加"> </td>
  </tr>
  <tr>
	<td colspan=2>
  <iframe id="success" name="success" style="width:100%;height:20%; "></iframe>
  </td>
  </tr>
  </table>
  </form>
  </body>
</html>
