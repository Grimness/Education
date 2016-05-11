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
    
    <title>添加课时二维码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript">

	 function video(){
  document.forms.example.action="servlet/UploadHandleServlet";
   document.forms.example.target="success1";
  document.forms.example.enctype="multipart/form-data";
	document.forms.example.submit();
  }
  

  
    function add(){
  document.forms.example.action="add_dym_fin.do";
 document.forms.example.target="";
 document.forms.example.enctype="";
	document.forms.example.submit();
  }
</script>	
  </head>
  
  <body >
   <form name="example" method="post" >
    <input type="text" name="fsubjectid" id="fsubjectid" value="${ex.fsubjectid}" style="display:none">
   <input type="text" name="fversionid" id="fversionid" value="${ex.fversionid}" style="display:none">
   <input type="text" name="fclassid" id="fclassid" value="${ex.fclassid}" style="display:none">
   <input type="text" name="FVolume" id="FVolume" value="${ex.FVolume}" style="display:none">
   <input type="text" name="funit" id="funit" value="${ex.funit}" style="display:none">
      <input type="text" name="FUnitQRCODE" id="FUnitQRCODE" value="${ex.fversionid}${ex.fsubjectid}${ex.fclassid}${ex.FVolume}${ex.funit}01" style="display:none">
     <input type="text" name="FHourID" id="FHourID" value="${ex.FHourID}" style="display:none">
     <center>
   <input type="file"   id="FRemark1" name="FRemark1" style="background:#FFFFFF;" >
   <input type="button" style="background:#F2F2F2;" value="上传" onclick="video()">
   <br/><iframe id="success1" name="success1" style="width:100%;height:10%; "></iframe>
     <br/><input type="button" value="添加" onclick="add()">
     </center>
     </form>
  </body>
</html>
