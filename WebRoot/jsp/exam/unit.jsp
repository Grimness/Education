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

<html>
<head>
  <base href="<%=basePath%>">
<title>课时</title>
	<meta name="viewport" content="width=device-width,user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	
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
	height:20px; 
	padding-top:5px;
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
	
	</style> 
</head>
<body>
<!--  
<table width="200" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td valign="middle" style="font-size:14px;background:url(<%=basePath%>jsp/exam/images/titleback.png)">&#35838;&#26102;&#36873;&#25321;</td>
	</tr>
	 <c:forEach items="${exercise}" var="ex">
	<tr>
		<td><a href="exam/toqrcode.do?qrcode=${ex.FQRCode1}">${ex.FHourDesc}</a></td>
	</tr>
	</c:forEach>

</table>
-->
<c:forEach items="${exercise}" var="ex">
<div align="center" class="maindiv">
		
		<!--北师3下第6单元_edit(1)  -->
	
	<!-- <embed id="em" src="upload/2.wmv"  style="height:400px;width:500px" type="audio/mpeg" autostart="1" loop="0"> -->
	  <%--  <embed src="<%=basePath%>upload/edit(1).wmv" width="400px" height="300px" name="plugin"  type="video/x-ms-wmv"> --%>
	<video width="80%" height="80%" controls="controls">
  		<source src="upload/${ex.FRemark1}" type="video/mp4"></source>	   
	</video>
		
	</div>
	</c:forEach>
</body>
</html>